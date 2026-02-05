<?
  header("Content-type: application/json");
  require_once __DIR__.'/../admin/assets/php-function/pdo-database.php';
  require_once __DIR__.'/../admin/assets/php-function/function.php';
  require_once __DIR__.'/../admin/assets/message_var/th.php';

  $tc_date = $_GET['topChartDate'];
  $db = new DatabaseConnection();

  $topChartsData = $db->dbQuery("SELECT * FROM top_chart ORDER BY top_chart_date");
  if($topChartsData!==null){
    $tcArray = array();
    foreach($topChartsData as $key => $value){
      $sql = "SELECT * FROM top_chart_song tcs INNER JOIN song s ON tcs.song_id = s.song_id WHERE tcs.top_chart_id = :tcid AND tcs.song_order = 1";
      $param = array(':tcid' => $value['top_chart_id']);
      $tc = $db->dbRow($sql, $param);
      list($y, $m, $d) = explode("-", $value['top_chart_date']);
      $tcArray[] = array(
        'num_1_song' => $tc['song_name'],
        'num_1_songs_artist' => $tc['artist_name_map'],
        'date' => $d . "/" . $m . "/" . $y,
      );
    }
    $response = array('status' => 1, 'result' => $tcArray);
  }else{
    $response = array('status' => 2, 'result' => null);
  }
  
  echo json_encode($response);
?>