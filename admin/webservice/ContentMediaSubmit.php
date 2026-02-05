<?
  header("Content-type: application/json");
  require_once __DIR__.'/../assets/php-function/pdo-database.php';
  require_once __DIR__.'/../assets/php-function/auth.php';
  require_once __DIR__.'/../assets/php-function/function.php';
  require_once __DIR__.'/../assets/message_var/th.php';

  $auth = new UserAuthentication();
  $db = new DatabaseConnection();

  $userAccessToken = $_COOKIE['access_token'];
  $mdFile = $_FILES['media_file'];
  $mdType = $_POST['media_type'];

  if($auth->VerfiyJWToken($userAccessToken)){
      $postConfig = $siteConfig['post-config'];
      if($mdType == 'image'){
        $uploadDir = __DIR__."/../../rsc/content/img/";
        $fileExt = getFileExtension($mdFile["name"]);
        $newName = randomFileName();
        $targetFile = $uploadDir . $newName . "." . $fileExt;
        $validateFile = validateFileToUpload($mdFile, 'image', $uploadDir, $postConfig["img_ext"], false, false, _FILE_UPLOAD_MAX_SIZE);
        if(1!=$validateFile){
          $response = array('status' => 2, 'msg' => $txt_var['request_error']);
        }else{
          if(move_uploaded_file($mdFile["tmp_name"], $targetFile)===true){
            $up_time = strtotime('now');
            touch($targetFile, $up_time);
            $mdFileName = $newName .  "." . $fileExt;
            $response = array('status' => 1, 'msg' => $txt_var['request_success'], 'result' => array('filename' => $mdFileName));
          }else{
            $response = array('status' => 2, 'msg' => $txt_var['request_error']);
          }
        }
      }else{
        $response = array('status' => 2, 'msg' => $txt_var['request_error']);
      }
  }else{
    // if refresh token invalid
    $response = array('status' => 0, 'msg' => $txt_var['request_error_authen']);
  }
  echo json_encode($response);
?>