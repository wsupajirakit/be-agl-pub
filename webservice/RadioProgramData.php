<?
  header("Content-type: application/json");
  require_once __DIR__.'/../admin/assets/php-function/pdo-database.php';
  require_once __DIR__.'/../admin/assets/php-function/function.php';
  require_once __DIR__.'/../admin/assets/message_var/th.php';

  $rdo_id = $_GET['radio'];
  $db = new DatabaseConnection();

  $now = new DateTime();
  $today = $now->format('Y-m-d');

  $lastestRadioProgram = $db->dbRow("SELECT * FROM radio_program WHERE :td BETWEEN rdo_program_start AND rdo_program_end AND radio_id = :rdo", array(':td' => $today, ':rdo' => $rdo_id));
  if($lastestRadioProgram!==null){
    $rpConfig = $siteConfig['radiopresenter-config'];
    $details = $db->dbQuery("SELECT * FROM radio_program_details WHERE rdo_program_id = :id ORDER BY rdo_program_details_time_start ASC", array(':id' => $lastestRadioProgram['rdo_program_id']));
    $tmpDj = array();
    $tmpDjId = array();
    $sort = array();
    foreach($details as $key => $value){
      if(!isset($sort[$value['rdo_program_details_day']]))
        $sort[$value['rdo_program_details_day']] = array();

      $detailsDj = $db->dbQuery("SELECT * FROM radio_program_details_radio_presenter WHERE rdo_program_details_id = :id", array(':id' => $value['rdo_program_details_id']));
      $djList = array();
      foreach($detailsDj as $key2 => $value2){
        if(!in_array($value2['rp_id'], $tmpDjId)){
          $d = $db->dbRow("SELECT rp_name AS name, rp_image AS image FROM radio_presenter WHERE rp_id = :id", array(':id' => $value2['rp_id']));
          $d['image'] = $rpConfig['rp_url'] . $d['image'];
          $tmpDj[$value2['rp_id']] = $d;
          $tmpDjId[$value2['rp_id']] = $value2['rp_id'];
        }
        $djList[] = $tmpDj[$value2['rp_id']];
      }

      $s = new DateTime($value['rdo_program_details_time_start']);
      $e = new DateTime($value['rdo_program_details_time_end']);
      $e->modify("+1 minute");
      $sort[$value['rdo_program_details_day']][] = array('dj' => $djList, 'time' => array('start' => $s->format("H:i"), 'end' => $e->format("H:i")));
    }
    // $sql = "SELECT * FROM top_chart_song tcs INNER JOIN song s ON tcs.song_id = s.song_id WHERE tcs.top_chart_id = :tcid ORDER BY tcs.song_order ASC";
    // $param = array(':tcid' => $lastestTopChart['top_chart_id']);
    // $topChartData = $db->dbQuery($sql, $param);
    // list($y, $m, $d) = explode("-", $lastestTopChart['top_chart_date']);
    // $topChartDataFormatted = array(
    //   'songs' => array(),
    //   'date' => $d . "/" . $m . "/" . $y,
    // );
    // foreach($topChartData as $key => $value){
    //   $topChartDataFormatted['songs'][] = array(
    //     'num' => $value['song_order'],
    //     'name' => $value['song_name'],
    //     'artists' => $value['artist_name_map'],
    //   );
    // }
    $response = array('status' => 1, 'result' => $sort);
  }else{
    $response = array('status' => 2, 'result' => null);
  }
  
  echo json_encode($response);
?>