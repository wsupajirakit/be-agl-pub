<?
  header("Content-type: application/json");
  // require_once __DIR__.'/../assets/lib/Parsedown/Parsedown.php';
  require_once __DIR__.'/../assets/php-function/pdo-database.php';
  require_once __DIR__.'/../assets/php-function/auth.php';
  require_once __DIR__.'/../assets/php-function/function.php';
  require_once __DIR__.'/../assets/message_var/th.php';
  $auth = new UserAuthentication();
  $userAccessToken = $_COOKIE['access_token'];
  $action = $_GET['action'];
  $pid = $_GET['post_id'];
  if($auth->VerfiyJWToken($userAccessToken)){
    // $conf = parse_ini_file(__DIR__."/../data/config/site.config.ini", true);
    $postConfig = $siteConfig["post-config"];
    $db = new DatabaseConnection();
    $post = null;
    if($action=='update'){
      // $Parsedown = new Parsedown();
  // $Parsedown->setMarkupEscaped(true);
      $sql = "SELECT * FROM post WHERE post_id = :pid";
      $param = array(':pid' => $pid);
      $post = $db->dbRow($sql, $param);
      if(null !== $post){
        // $post["post_content"] = $Parsedown->text($post["post_content"]);
        $post["post_content"] = parseContentHTML($post["post_content"], "o");
        $post["post_title"] = htmlspecialchars_decode($post["post_title"]);

        $timeBkk = new DateTime($post["publish_date"], new DateTimeZone(date_default_timezone_get()));
        $timeBkk->setTimezone(new DateTimeZone('Asia/Bangkok'));
        $timePublish = $timeBkk->format('Y-m-d H:i:s');

        $post["publish_date"] = $timePublish;

        unset($post['user_id']);
        unset($post['post_id']);
      }
    }
    $response = array('status' => 1, 'config' =>  $postConfig, 'post' => $post);
  }else{
    // if refresh token invalid
    $response = array('status' => 0, 'msg' =>  $txt_var['request_error_authen']);
  }
  echo json_encode($response);
?>