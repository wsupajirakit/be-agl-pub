<?
  session_start();
  require_once __DIR__.'/assets/php-function/pdo-database.php';
  require_once __DIR__.'/assets/php-function/auth.php';
  $auth = new UserAuthentication();

  $userAccessToken = isset($_COOKIE['access_token']) ? $_COOKIE['access_token'] : "";
  $userAccessTokenData = $auth->DecodeJWToken($userAccessToken);
  $sessionPath = __DIR__."/data/user-token/session/";
  $sessionFile = $sessionPath.$userAccessTokenData['uid'].".txt";
  unlink($sessionFile);
  session_destroy();
  setcookie('refresh_token', null, -1, "/");
  setcookie('access_token', null, -1, "/");
  setcookie('ss_token', null, -1, "/");
  header("Location: signin.php");
?>