<?
  header("Content-type: application/json");
  use PHPMailer\PHPMailer\PHPMailer;
  use PHPMailer\PHPMailer\Exception;
  
  require_once '../assets/lib/PHPMailer/6.0.7/src/PHPMailer.php';
  require_once '../assets/lib/PHPMailer/6.0.7/src/Exception.php';
  require_once '../assets/lib/PHPMailer/6.0.7/src/SMTP.php';
  require_once '../assets/php-function/pdo-database.php';
  // require_once '../assets/php-function/auth.php';
  require_once '../assets/php-function/function.php';
  require_once '../assets/message_var/th.php';
  // $auth = new UserAuthentication();
  $db = new DatabaseConnection();
  // $userRefreshToken = $_COOKIE['refresh_token'];
  $userEmail = trim(strtolower($_POST['email']));
  // if($auth->VerfiyJWToken($userRefreshToken, 'refreshToken')){
    if(strlen($userEmail)>0){
      if(validateData('email', $userEmail)){
        $sql = "SELECT * FROM user WHERE email = :em AND active_status = 1";
        $param = array(':em' => $userEmail);
        $userData = $db->dbRow($sql, $param);
        if($userData!==null){
          $conf = loadConfigIni(__DIR__."/../data/config/contact.config.ini");
          $gmail_name   = $conf["mailer-data"]["gmail-name"];
          $gmail_addr   = $conf["mailer-data"]["gmail-addr"];
          $gmail_pwd    = $conf["mailer-data"]["gmail-pwd"];
          $gmail_host   = $conf["mailer-data"]["gmail-host"];
          $gmail_port   = $conf["mailer-data"]["gmail-port"];
          $mail_style = file_get_contents('email_tmpl/email_tmpl_style.css');
          $mail_tmpl = file_get_contents('email_tmpl/ResetPassword_tmpl.html');
          $limitTime = 30;
          $rndToken = getRndSHA256Token();
          $expiration = strtotime('now') + ($limitTime * 60);
          $expiration_format = date('d/m/Y H:i:s', $expiration);
          $jsonData = array('user_id' => $userData['user_id'], 'token' => $rndToken, 'expiration' => $expiration_format, 'expiration_stamp' => $expiration);
          
          $appDataPath = __DIR__.'/../data/app-data.json';
          if(file_exists($appDataPath)){
            $appDataFile = fopen($appDataPath, 'r');
            if($appDataFile){
              $appData = fread($appDataFile, filesize($appDataPath));
              $appData = json_decode($appData, true);
            }
            fclose($appDataFile);
          }

          $aboutStr = '';
          $aboutStr .= $appData['about']['organization_name'] . '<br />';
          $aboutStr .= $appData['contact']['full_address'] . '<br />';
          $aboutStr .= $txt_var['phone'] . ": " . implode(", ", $appData['contact']['phone']) . '<br />';
          $aboutStr .= $txt_var['email'] . ": " . implode(", ", $appData['contact']['email']) . '<br />';

          $mail_html = parseTemplate(
            $mail_tmpl,
            array('{{$style}}' => $mail_style, '{{$reset_link}}' => $frontendBaseUrl.'admin/reset-password.php?refcode=' . $rndToken . '&email=' . $userData['email'], '{{app_name}}' => $AppName, '{{logo_img}}' => $mainLogo, '{{web_name}}' => $WebName, '{{about_app}}' => $aboutStr, '{{_title_}}' => $txt_var['reset_password_request'], '{{_to_reset_password_please_}}' => $txt_var['to_reset_password_please'], '{{_click_here_}}' => $txt_var['click_here'], '{{_reset_password_if_not_request_}}' => $txt_var['reset_password_if_not_request'],
              '{{_reset_password_code_valid_notice_}}' => $txt_var['reset_password_code_valid_notice'],
          )
          );

          $mail_html = parseTemplate(
            $mail_html,
            array('{{limit_time}}' => $limitTime,
          )
          );
          try{
            $mail               = new PHPMailer;
            $mail->CharSet      = "utf-8";
            $mail->isSMTP();
            $mail->SMTPDebug    = 0;
            $mail->Debugoutput  = 'html';
            $mail->Host         = $gmail_host;
            $mail->Port         = $gmail_port;
            $mail->SMTPSecure   = 'tls';
            $mail->SMTPAuth     = true;
            $mail->Username     = $gmail_addr;
            $mail->Password     = $gmail_pwd;
            $mail->setFrom($gmail_addr, $gmail_name);
            $mail->addAddress($userData['email'], $userData['fullname']);
            $mail->Subject = $AppName . " " . $txt_var['reset_password_request'];
            $mail->msgHTML($mail_html, dirname(__FILE__));
            if($mail->send()){ 
              $response = array('status' => 1, 'msg' => $txt_var['reset_password_help_sended']);
              $fp = fopen(__DIR__.'/../data/user-token/reset-password/'.$userData['user_id'].'.json', 'w');
              fwrite($fp, json_encode($jsonData));
              fclose($fp);
            }else{
              $response = array('status' => 3, 'msg' => $txt_var['request_error']);
            }
          }catch (phpmailerException $e){ 
            $response = array('status' => 3, 'msg' => $txt_var['request_error']);
          }
        }else{
          $response = array('status' => 2, 'msg' => $txt_var['account_not_found']);
        }
      }else{
        $response = array('status' => 2, 'msg' => $txt_var['email_invalid']);
      }
    }else{
      $response = array('status' => 2, 'msg' => $txt_var['please_fill_data']);
    }
  // }
  // else{
  //   // if refresh token invalid
  //   $response = array('status' => 0, 'msg' =>  $txt_var['request_error_authen']);
  // }
  echo json_encode($response);
?>
