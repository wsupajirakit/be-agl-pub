<?
  header("Content-type: application/json");
  require_once __DIR__.'/../assets/php-function/pdo-database.php';
  require_once __DIR__.'/../assets/php-function/auth.php';
  require_once __DIR__.'/../assets/php-function/function.php';
  require_once __DIR__.'/../assets/message_var/th.php';
  $auth = new UserAuthentication();
  $userAccessToken = $_COOKIE['access_token'];
  $db = new DatabaseConnection();
  if($auth->VerfiyJWToken($userAccessToken)){
    $sql = "SELECT * FROM song ORDER BY song_name ASC";
    $data = $db->dbQuery($sql);
    $songList = array();
    foreach($data as $key => $value){
      $songList[] = array(
        'id'      =>  $value['song_id'],
        'name'  =>  $value['song_name'],
        'artists'  =>  $value['artist_name_map'],
      );
    }
    $response = array('data' => ($songList));
  }else{
    // if refresh token invalid
    $response = array('status' => 0, 'msg' =>  $txt_var['request_error_authen']);
  }
  echo json_encode($response);
?>