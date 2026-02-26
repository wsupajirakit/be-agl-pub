<?php
declare(strict_types=1);

header('Content-Type: text/html; charset=utf-8');

function loadAppData(string $path): array
{
    if (!is_readable($path)) {
        return [];
    }

    $raw = file_get_contents($path);
    if ($raw === false) {
        return [];
    }

    $data = json_decode($raw, true);
    return is_array($data) ? $data : [];
}

function resolveStreamUrl(array $appData, string $radioKey): ?string
{
    if (!isset($appData['radio']) || !is_array($appData['radio'])) {
        return null;
    }

    $radio = $appData['radio'][$radioKey] ?? null;
    if (!is_array($radio)) {
        $firstRadio = reset($appData['radio']);
        $radio = is_array($firstRadio) ? $firstRadio : null;
    }

    if (!is_array($radio)) {
        return null;
    }

    return $radio['straming_url'] ?? $radio['streaming_url'] ?? null;
}

function h(string $value): string
{
    return htmlspecialchars($value, ENT_QUOTES, 'UTF-8');
}

$appDataPath = __DIR__ . '/../admin/data/app-data.json';
$appData = loadAppData($appDataPath);
$radioKey = isset($_GET['radio']) ? trim((string) $_GET['radio']) : 'radio1';
$streamUrl = resolveStreamUrl($appData, $radioKey);

if ($streamUrl === null || $streamUrl === '') {
    http_response_code(404);
    echo 'Stream not configured.';
    exit;
}

$appName = '';
if (isset($appData['about']['app_name'])) {
    $appName = (string) $appData['about']['app_name'];
}

$title = $appName !== '' ? $appName . ' Radio Stream' : 'Radio Stream';
$autoplay = filter_var($_GET['autoplay'] ?? '1', FILTER_VALIDATE_BOOLEAN);
$showControls = filter_var($_GET['controls'] ?? '0', FILTER_VALIDATE_BOOLEAN);
$hideAudio = !$showControls;
?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?= h($title); ?></title>
    <style>
      html, body {
        height: 100%;
        margin: 0;
      }
      body {
        display: flex;
        align-items: center;
        justify-content: center;
        background: #0b0d10;
        color: #f5f6f7;
        font-family: "IBM Plex Sans", "SF Pro Text", "Segoe UI", Tahoma, sans-serif;
      }
      .player {
        width: min(480px, 92vw);
        text-align: center;
      }
      .player__title {
        font-size: 16px;
        margin-bottom: 12px;
        opacity: 0.8;
        letter-spacing: 0.3px;
      }
      audio {
        width: 100%;
      }
      <?php if ($hideAudio): ?>
      audio {
        display: none;
      }
      <?php endif; ?>
    </style>
  </head>
  <body>
    <div class="player">
      <div class="player__title"><?= h($title); ?></div>
      <audio
        <?= $autoplay ? 'autoplay' : ''; ?>
        <?= $showControls ? 'controls' : ''; ?>
        playsinline
      >
        <source src="<?= h($streamUrl); ?>">
        Your browser does not support audio playback.
      </audio>
    </div>
  </body>
</html>
