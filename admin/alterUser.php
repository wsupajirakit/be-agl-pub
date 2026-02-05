<?

 //  	require_once 'assets/php-function/pdo-database.php';

 //    $db = new DatabaseConnection();



	// $sql = "INSERT INTO user (username, password, fullname, email, profile_image) VALUES (:un, :pwd, :fn, :em, :pf)";

	// $param = array(':un' => 'admin', ':pwd' => password_hash('111111', PASSWORD_BCRYPT), ':fn' => 'Administrator', ':em' => 'pramotesupnoi@gmail.com', ':pf' => 'user.png');

	// echo $db->dbQuery($sql);

	// --------------------

  // header("Content-type: application/json");
  // require_once __DIR__.'/assets/php-function/pdo-database.php';
  // require_once __DIR__.'/assets/php-function/function.php';
  // require_once __DIR__.'/assets/message_var/th.php';
  // $db = new DatabaseConnection();
  //   $sql = "SELECT * FROM song ORDER BY song_name ASC";
  //   $data = $db->dbQuery($sql);
  //   $songList = array();
  //   foreach($data as $key => $value){
  //     $sql = "SELECT * FROM artist a INNER JOIN song_artist sa ON a.artist_id = sa.artist_id WHERE sa.song_id = :sid ORDER BY sa.is_lead_artist DESC";
  //     $param = array(':sid' => $value['song_id']);
  //     $artists = $db->dbQuery($sql, $param);
      
  //     $artistName = "";
  //     for($i=0; $i < count($artists); $i++){ 
  //       $artistName .= $artists[$i]['artist_name'];
  //       if($i==0 && count($artists) > 1)
  //         $artistName .= " " . $txt_var['feat'] . " ";

  //       if($i > 0 && $i < count($artists) - 1)
  //         $artistName .= ", ";
  //     }
  //     $sql = "UPDATE song SET artist_name_map = :nm WHERE song_id = :id";
  //     $param = array(':nm' => $artistName, ':id' => $value['song_id']);
  //     $db->dbQuery($sql, $param);
  //     $songList[] = array(
  //       'id'      =>  $value['song_id'],
  //       'name'  =>  $value['song_name'],
  //       'artists'  =>  $artistName,
  //     );
  //   }
  //   $response = array('data' => ($songList));
  // echo json_encode($response);

?>