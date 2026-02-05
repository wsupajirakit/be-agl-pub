<?
header("Content-type: application/json");
require_once __DIR__.'/../../admin/assets/php-function/pdo-database.php';
require_once __DIR__.'/../../admin/assets/php-function/function.php';
require_once __DIR__.'/../../admin/assets/message_var/th.php';

$db = new DatabaseConnection();
$prConfig = $siteConfig['pr-config'];

$appDataPath = __DIR__.'/../../admin/data/app-data.json';
  if(file_exists($appDataPath)){
    $appDataFile = fopen($appDataPath, 'r');
    if($appDataFile){
      $appData = fread($appDataFile, filesize($appDataPath));
      $appData = json_decode($appData, true);

      $popup = $db->dbQuery("SELECT pr_image AS image, pr_title AS title, pr_url AS link  FROM public_relations WHERE pr_type = 4");
      for($i=0; $i < count($popup); $i++){ 
        $popup[$i]['image'] = $prConfig['app_popup_url'] . $popup[$i]['image'];
      }

      $appData['popup'] = $popup;
      $response = array('status' => 1, 'result' => $appData);
      // $response = array('status' => 1, 'result' => array(
       // 'popup' => $popup,
       // 'contact' => $appData['contact'],
       // 'social' => $appData['social'],
       // 'radio' => $appData['radio'],
       // 'acknowledgement' => $appData['acknowledgement'],
       // 'about' => $appData['about'],
      // ));
    }else{
      $response = array('status' => 2,);
    }
    fclose($appDataFile);
  }else{
    $response = array('status' => 2,);
  }
  echo json_encode($response);
?>