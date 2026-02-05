<?
  header("Content-type: application/json");
  require_once __DIR__.'/../assets/php-function/pdo-database.php';
  require_once __DIR__.'/../assets/php-function/auth.php';
  require_once __DIR__.'/../assets/php-function/function.php';
  require_once __DIR__.'/../assets/message_var/th.php';

  $auth = new UserAuthentication();
  $db = new DatabaseConnection();

  $userAccessToken = $_COOKIE['access_token'];
  $tc_id = $_POST['id'];

  if($auth->VerfiyJWToken($userAccessToken)){
    $userAccessTokenData = $auth->DecodeJWToken($userAccessToken);
    
    $sql = "DELETE FROM top_chart_song WHERE top_chart_id = :id";
    $res = $db->dbQuery($sql, array(':id' => $tc_id));

    $sql = "DELETE FROM top_chart WHERE top_chart_id = :id";
    $res = $db->dbQuery($sql, array(':id' => $tc_id));
    
    $response = array('status' => 1, 'msg' => $txt_var['request_success']);
  }else{
    // if refresh token invalid
    $response = array('status' => 0, 'msg' => $txt_var['request_error_authen']);
  }
  echo json_encode($response);
?>