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
    $sql = "SELECT * FROM artist ORDER BY artist_name ASC";
    $data = $db->dbQuery($sql);
    $artistList = array();
    foreach ($data as $key => $value) {
      $artistList[] = array(
        'id'      =>  $value['artist_id'],
        'name'  =>  $value['artist_name'],
      );
    }
    $response = array('data' => ($artistList));
  }else{
    // if refresh token invalid
    $response = array('status' => 0, 'msg' =>  $txt_var['request_error_authen']);
  }
  echo json_encode($response);
?>