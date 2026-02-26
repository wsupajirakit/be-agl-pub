<?
  header("Content-type: application/json");
  require_once __DIR__.'/../admin/assets/php-function/pdo-database.php';
  require_once __DIR__.'/../admin/assets/php-function/function.php';
  require_once __DIR__.'/../admin/assets/message_var/th.php';

  $tc_date = $_GET['date'];
  $db = new DatabaseConnection();

  $lastestTopChart = $db->dbRow("SELECT * FROM top_chart WHERE top_chart_date = :dt", array(':dt' => $tc_date));
  if($lastestTopChart!==null){
    $sql = "SELECT * FROM top_chart_song tcs INNER JOIN song s ON tcs.song_id = s.song_id WHERE tcs.top_chart_id = :tcid ORDER BY tcs.song_order ASC";
    $param = array(':tcid' => $lastestTopChart['top_chart_id']);
    $topChartData = $db->dbQuery($sql, $param);
    // list($y, $m, $d) = explode("-", $lastestTopChart['top_chart_date']);
    $topChartDataFormatted = array(
      'songs' => array(),
      'date_formatted' => toReadableDateTime(strtotime($lastestTopChart['top_chart_date'])),
      'date' => $d . "/" . $m . "/" . $y,
    );
    foreach($topChartData as $key => $value){
      $_lwo = empty($value['last_week_order']) ? "" : $value['last_week_order'];
      $_ocwn = empty($value['on_chart_week_number']) ? "" : $value['on_chart_week_number'];
      $topChartDataFormatted['songs'][] = array(
        'num' => $value['song_order'],
        'name' => $value['song_name'],
        'artists' => $value['artist_name_map'],
        'lastChartNum' => $_lwo,
        'onChartLong' => $_ocwn,
      );
    }
    $response = array('status' => 1, 'result' => $topChartDataFormatted);
  }else{
    $response = array('status' => 2, 'result' => null);
  }
  
  echo json_encode($response);
?>