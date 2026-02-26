<?
  header("Content-type: application/json");
  require_once __DIR__.'/../assets/php-function/auth.php';
  require_once __DIR__.'/../assets/php-function/function.php';
  require_once __DIR__.'/../assets/message_var/th.php';

  $auth = new UserAuthentication();
  $userAccessToken = $_COOKIE['access_token'];
  
  if($auth->VerfiyJWToken($userAccessToken)){
    $rpConfig = $siteConfig["radiopresenter-config"];
    $response = array('status' => 1, 'config' =>  $rpConfig);
  }else{
    // if refresh token invalid
    $response = array('status' => 0, 'msg' =>  $txt_var['request_error_authen']);
  }
  echo json_encode($response);
?>