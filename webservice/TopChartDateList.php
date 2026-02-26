<?php
declare(strict_types=1);

header('Content-Type: application/json; charset=utf-8');

require_once __DIR__ . '/../admin/assets/php-function/pdo-database.php';

function respondJson($payload, int $statusCode = 200): void
{
    http_response_code($statusCode);
    echo json_encode($payload, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
    exit;
}

function formatTopChartDate(string $date): string
{
    $date = trim($date);
    if ($date === '') {
        return '';
    }

    $dt = DateTime::createFromFormat('Y-m-d', $date);
    if ($dt instanceof DateTime) {
        return $dt->format('d/m/Y');
    }

    $timestamp = strtotime($date);
    return $timestamp ? date('d/m/Y', $timestamp) : $date;
}

$format = isset($_GET['format']) ? strtolower(trim((string) $_GET['format'])) : 'standard';

$db = new DatabaseConnection();
$rows = $db->dbQuery(
    'SELECT DISTINCT top_chart_date AS chart_date FROM top_chart ORDER BY top_chart_date DESC'
);

if ($rows === false) {
    $errorPayload = ['status' => 0, 'result' => null];
    respondJson($format === 'flat' ? [] : $errorPayload, 500);
}

if (empty($rows)) {
    $emptyPayload = ['status' => 2, 'result' => null];
    respondJson($format === 'flat' ? [] : $emptyPayload);
}

$result = [];
foreach ($rows as $row) {
    if (!isset($row['chart_date'])) {
        continue;
    }
    $formatted = formatTopChartDate((string) $row['chart_date']);
    if ($formatted === '') {
        continue;
    }
    $result[] = ['key' => $formatted, 'label' => $formatted];
}

if ($format === 'flat') {
    respondJson($result);
}

respondJson(['status' => 1, 'result' => $result]);
