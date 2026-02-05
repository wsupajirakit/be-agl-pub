<?
  header("Content-type: application/json");
  require_once '../assets/php-function/function.php';
  require_once '../assets/php-function/pdo-database.php';
  require_once '../assets/php-function/auth.php';
  require_once '../assets/message_var/th.php';
  $auth = new UserAuthentication();
  $userRefreshToken = $_COOKIE['refresh_token'];
  if($auth->VerfiyJWToken($userRefreshToken, 'refreshToken')){
    $now = strtotime('now');
    try{
      $userAccessToken = $auth->GetJWToken($userRefreshToken);
      if($userAccessToken!==false){
        
        // write session token
        $userAccessTokenData = $auth->DecodeJWToken($userAccessToken['token']);
        $sessionPath = __DIR__."/../data/user-token/session/";
        $sessionFile = $sessionPath.$userAccessTokenData['uid'].".txt";

        if(file_exists($sessionFile)){
          $ssFile = fopen($sessionFile, "r");
          $ssToken = fread($ssFile,filesize($sessionFile));
          fclose($ssFile);

          if(trim($ssToken) != trim($_COOKIE['ss_token'])){
            $response = array('status' => 0, 'msg' =>  $txt_var['request_error_authen']);
          }else{
            // $rndToken = getToken(12);
            // $ssfile = fopen($sessionFile, "w");
            // fwrite($ssfile, $rndToken);
            // fclose($ssfile);
            setcookie('ss_token', trim($_COOKIE['ss_token']), time() + (86400 * 30), "/");
            
            setcookie('access_token', $userAccessToken['token'], $userAccessToken['expiration'], "/");
            $response = array('status' => 1, 'nextRefresh' => $userAccessToken['expiration'] - strtotime('now'));
          }
        }else{
          $response = array('status' => 0, 'msg' =>  $txt_var['request_error_authen']);
        }
      }else{
        $response = array('status' => 2, 'msg' =>  $txt_var['request_error_authen']);
      }
      $refreshTokenData = $auth->DecodeJWToken($userRefreshToken, 'refreshToken');
      // if refresh token is about to expire request new one
      if(($refreshTokenData['exp'] - $now) < (60 * 60)){ // if refresh token expire in 1 hour
        $newRefreshToken = $auth->GetJWTRefreshToken(array('renew_value' => 'token', 'token' => $userRefreshToken));
        if($newRefreshToken!==false){
          setcookie('refresh_token', $newRefreshToken['token'], $newRefreshToken['expiration'], "/");
        }else{
          // if unable to renew
          $response = array('status' => 0, 'msg' =>  $txt_var['request_error_authen']);
        }
      }
    }catch(Exception $e){
      $response = array('status' => 2, 'msg' =>  $txt_var['request_error_authen']);
    }
  }else{
    // if refresh token invalid
    $response = array('status' => 0, 'msg' =>  $txt_var['request_error_authen']);
  }
  echo json_encode($response);
?>