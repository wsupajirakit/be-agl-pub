<?php
declare(strict_types=1);

// Backward-compatible wrapper. The main implementation now lives in
// webservice/TopChartDateList.php
if (!isset($_GET['format'])) {
    $_GET['format'] = 'flat';
}

require_once __DIR__ . '/../webservice/TopChartDateList.php';
