<?
  require_once __DIR__.'/assets/php-function/function.php';
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
          // $userAccessToken = $userAccessToken['token'];

          // $userAccessTokenData = $auth->DecodeJWToken($userAccessToken['token']);
          // $sessionPath = __DIR__."/data/user-token/session/";
          // $sessionFile = $sessionPath.$userAccessTokenData['uid'].".txt";
          // if(file_exists($sessionFile)){
          //   $ssFile = fopen($sessionFile, "r");
          //   $ssToken = fread($ssFile,filesize($sessionFile));
          //   fclose($ssFile);
          //   if(trim($ssToken) == trim($_COOKIE['ss_token'])){
          //     setcookie('access_token', $userAccessToken['token'], $userAccessToken['expiration'], "/");
          //   }else{
          //     header("Location: logout.php");
          //     die();
          //   }
          // }else{
          //   header("Location: logout.php");
          //   die();
          // }
          setcookie('access_token', $userAccessToken['token'], $userAccessToken['expiration'], "/");
          $tk = $userAccessToken['token'];
        }else{
          header("Location: logout.php");
          // echo "5";
          die();
        }
      }catch(Exception $e) {
        header("Location: logout.php");
        // echo "4";
        die();
      }
    }else{
      $tk = $userAccessToken;
    }
  }
  else{
    header("Location: logout.php");
    // echo "3";
    die();
  }
  $userAccessData = $auth->DecodeJWToken($tk);
  $userAccessTokeLifeTime = intval($userAccessData['exp']) - strtotime('now');
  $userData = $db->dbRow("SELECT * FROM user WHERE user_id = :uid AND active_status = 1", array(':uid' => $userAccessData['uid']));
  if($userData===null){
    header("Location: logout.php");
    die();
  }

  // $userAccessTokenData = $auth->DecodeJWToken($userAccessToken);
  $sessionPath = __DIR__."/data/user-token/session/";
  $sessionFile = $sessionPath.$userData['user_id'].".txt";
  if(file_exists($sessionFile)){
    $ssFile = fopen($sessionFile, "r");
    $ssToken = fread($ssFile,filesize($sessionFile));
    fclose($ssFile);
    if(trim($ssToken) != trim($_COOKIE['ss_token'])){
      header("Location: logout.php");
      // echo "1";
      die();
    }
  }else{
    header("Location: logout.php");
    // echo "2";
    die();
  }

  $rndToken = getToken(12);
  $ssfile = fopen($sessionFile, "w");
  fwrite($ssfile, $rndToken);
  fclose($ssfile);
  setcookie('ss_token', $rndToken, time() + (86400 * 30), "/");
?>