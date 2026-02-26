<?
  header("Content-type: application/json");
  require_once __DIR__.'/../assets/php-function/pdo-database.php';
  require_once __DIR__.'/../assets/php-function/auth.php';
  require_once __DIR__.'/../assets/php-function/function.php';
  require_once __DIR__.'/../assets/message_var/th.php';
  $auth = new UserAuthentication();
  $userAccessToken = $_COOKIE['access_token'];
  $db = new DatabaseConnection();
  $tc_id = $_GET['id'];
  if($auth->VerfiyJWToken($userAccessToken)){
    $topchart = $db->dbRow("SELECT * FROM top_chart WHERE top_chart_id = :id", array(':id' => $tc_id));
    list($tc_year, $tc_month, $tc_day) = explode("-", $topchart['top_chart_date']);
    $tc_date = $tc_day . "/" . $tc_month . "/" . $tc_year;

    $sql = "SELECT * FROM top_chart_song ts INNER JOIN song s ON ts.song_id = s.song_id WHERE ts.top_chart_id = :id ORDER BY ts.song_order ASC";
    $data = $db->dbQuery($sql, array(':id' => $tc_id));
    $tcList = array();
    foreach($data as $key => $value){
      $tcList[] = array('number' => $key, 'song' => $value['song_name'], 'artist' => $value['artist_name_map']);
    }

    $response = array('data' => array('song' => $tcList, 'title' => str_replace("{n}", $tc_date, $txt_var['top_chart_of_date'])));
  }else{
    // if refresh token invalid
    $response = array('status' => 0, 'msg' =>  $txt_var['request_error_authen']);
  }
  echo json_encode($response);
?>