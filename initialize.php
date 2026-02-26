<?
	$appDataPath = __DIR__.'/admin/data/app-data.json';
  if(file_exists($appDataPath)){
    $appDataFile = fopen($appDataPath, 'r');
    if($appDataFile){
      $appData = fread($appDataFile, filesize($appDataPath));
      $appData = json_decode($appData, true);
    }
    fclose($appDataFile);
  }else{
  	echo "Someting went wrong!";
    die();
  }
  // $appSocial = $appData['social'];

  $appearancePath = __DIR__.'/admin/data/web-client/appearance.json';
  if(file_exists($appearancePath)){
    $appearanceFile = fopen($appearancePath, 'r');
    if($appearanceFile){
      $appearanceData = fread($appearanceFile, filesize($appearancePath));
      $appearanceData = json_decode($appearanceData, true);
    }
    fclose($appearanceFile);
  }else{
    echo "Someting went wrong!";
    die();
  }

  $meta_keywords_default = 'สถานีวิทยุ,คลื่นวิทยุ';
?>
