<?
  header("Content-type: application/json");
  // require_once __DIR__.'/../assets/lib/owasp-csrf-php/no-js/libs/csrf/csrfprotector.php';
  // csrfProtector::init();
  require_once __DIR__.'/../assets/php-function/function.php';
  require_once __DIR__.'/../assets/php-function/pdo-database.php';
  require_once __DIR__.'/../assets/php-function/auth.php';
  require_once __DIR__.'/../assets/message_var/th.php';

  $username = $_POST['username'];
  $password = $_POST['password'];
  $remember_me = (isset($_POST['remember']) && $_POST['remember']=='on') ? true : false;
  $aud = $_POST['aud'];
  $now  = strtotime('now');
  if($username!="" && $password!=""){
    $db = new DatabaseConnection();
    $auth = new UserAuthentication();
    $param = array(':uname' => $username, ':pwd' => password_hash($password, PASSWORD_BCRYPT));
    $userData = $db->dbRow("SELECT * FROM user WHERE username = :uname", array(':uname' => $username));
    if($userData!==null && password_verify($password, $userData['password'])){
      if($userData['active_status']!=1){
        $response = array('status' => 2, 'msg' => $txt_var['your_account_suspense']);
      }else{
        $chkSession = true;
        $ttExp = $auth->getJWTConfigTimeToExpire();
        $sessionPath = __DIR__."/../data/user-token/session/";
        $sessionFile = $sessionPath.$userData['user_id'].".txt";
        if(file_exists($sessionFile)){
          $ft = filemtime($sessionFile);
          if($now < ($ft + (($ttExp + 1) * 60))){
            $chkSession = false;
          }
        }

        if($chkSession === true){
          $refreshToken = $auth->GetJWTRefreshToken(array('username' => $username, 'password' => $password, 'aud' => $aud, 'stay' => $remember_me));
          $accessToken = $auth->GetJWToken($refreshToken['token']);
          if($refreshToken!==false && $accessToken!==false){

            $rndToken = getToken(12);
            $ssfile = fopen($sessionFile, "w");
            fwrite($ssfile, $rndToken);
            fclose($ssfile);

            setcookie('ss_token', $rndToken, time() + (86400 * 30), "/");
            setcookie('refresh_token', $refreshToken['token'], $refreshToken['expiration'], "/");
            setcookie('access_token', $accessToken['token'], $accessToken['expiration'], "/");
            $response = array('status' => 1);
          }else{
            $response = array('status' => 2, 'msg' => $txt_var['request_error']);
          }
        }else{
          $response = array('status' => 2, 'msg' => "ไม่สามารถเข้าใช้งานระบบได้ในขณะนี้");
        }
      }
    }else{
      $response = array('status' => 2, 'msg' => $txt_var['username_password_invalid']);
    }
  }else{
    $response = array('status' => 2, 'msg' => $txt_var['please_fill_data']);
  }
  echo json_encode($response);
?>