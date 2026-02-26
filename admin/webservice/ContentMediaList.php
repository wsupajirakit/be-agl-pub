<?
  header("Content-type: application/json");
  // require_once __DIR__.'/../assets/php-function/pdo-database.php';
  require_once __DIR__.'/../assets/php-function/auth.php';
  require_once __DIR__.'/../assets/php-function/function.php';
  require_once __DIR__.'/../assets/message_var/th.php';
  $auth = new UserAuthentication();
  $userAccessToken = $_COOKIE['access_token'];
  $offset = $_GET['offset'];
  $limit = $_GET['limit'];
  if($auth->VerfiyJWToken($userAccessToken)){
    $postConfig = $siteConfig['post-config'];
    $extensions = explode(",", $postConfig['img_ext']);
    $mediaImageDirectory = __DIR__.'/../../rsc/content/img/';
    // $extensions = array('jpg', 'jpeg', 'png', 'gif', 'bmp');
    $result = array();
    $directory = new DirectoryIterator($mediaImageDirectory);
    // iterate
    foreach($directory as $fileinfo){
      if($fileinfo->isFile()){
        $extension = getFileExtension($fileinfo->getFilename());
        if(in_array($extension, $extensions)){
          $result[$fileinfo->getFilename()] = filemtime($mediaImageDirectory . $fileinfo->getFilename());
        }
      }
    }
    arsort($result);
    $resultFiles = array_keys($result);
    $resultFiles = array_slice($resultFiles,  $offset, $limit);
    $response = array('status' => 1, 'result' => array('image' => $resultFiles));
  }else{
    // if refresh token invalid
    $response = array('status' => 0, 'msg' =>  $txt_var['request_error_authen']);
  }
  echo json_encode($response);
?>