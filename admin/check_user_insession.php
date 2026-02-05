<?
  require_once __DIR__.'/assets/php-function/pdo-database.php';
  require_once __DIR__.'/assets/php-function/auth.php';

  $db = new DatabaseConnection();
  $auth = new UserAuthentication();

  $userAccessToken = isset($_COOKIE['access_token']) ? $_COOKIE['access_token'] : "";
  $userRefreshToken = isset($_COOKIE['refresh_token']) ? $_COOKIE['refresh_token'] : "";

  if($auth->VerfiyJWToken($userRefreshToken, 'refreshToken')){
    if(!$auth->VerfiyJWToken($userAccessToken)){
      try{
        $userAccessToken = $auth->GetJWToken($userRefreshToken);
        if($userAccessToken!==false){
          $userAccessTokenData = $auth->DecodeJWToken($userAccessToken['token']);
          $sessionPath = __DIR__."/data/user-token/session/";
          $sessionFile = $sessionPath.$userAccessTokenData['uid'].".txt";
          if(file_exists($sessionFile)){
            $ssFile = fopen($sessionFile, "r");
            $ssToken = fread($ssFile,filesize($sessionFile));
            fclose($ssFile);
            if(trim($ssToken) == trim($_COOKIE['ss_token'])){
              setcookie('access_token', $userAccessToken['token'], $userAccessToken['expiration'], "/");
              header("Location: index.php");
              die();
            }
          }
        }
      }catch(Exception $e){
      }
    }else{
      header("Location: index.php");
      die();
    }
  }

  // $userAccessTokenData = $auth->DecodeJWToken($userAccessToken);
  //     $sessionPath = __DIR__."/data/user-token/session/";
  //     $sessionFile = $sessionPath.$userAccessTokenData['uid'].".txt";
  //     if(file_exists($sessionFile)){
  //       $ssFile = fopen($sessionFile, "r");
  //       $ssToken = fread($ssFile,filesize($sessionFile));
  //       fclose($ssFile);
  //       if(trim($ssToken) == trim($_COOKIE['ss_token'])){
  //         header("Location: index.php");
  //         die();
  //       }
  //     }
?>