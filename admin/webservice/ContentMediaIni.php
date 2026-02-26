<?
  header("Content-type: application/json");
  require_once __DIR__.'/../assets/php-function/pdo-database.php';
  require_once __DIR__.'/../assets/php-function/auth.php';
  require_once __DIR__.'/../assets/php-function/function.php';
  require_once __DIR__.'/../assets/message_var/th.php';

  $auth = new UserAuthentication();
  $db = new DatabaseConnection();

  $userAccessToken = $_COOKIE['access_token'];

  if($auth->VerfiyJWToken($userAccessToken)){
    $postConfig = $siteConfig['post-config'];
    $response = array('status' => 1, 'msg' => $txt_var['request_success'], 'result' => array('config' => $postConfig));
  }else{
    // if refresh token invalid
    $response = array('status' => 0, 'msg' => $txt_var['request_error_authen']);
  }
  echo json_encode($response);
?>