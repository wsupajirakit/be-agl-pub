<?
phpinfo();
	// $max_upload = min(ini_get('post_max_size'), ini_get('upload_max_filesize'));
	// $max_upload = str_replace('M', '', $max_upload);
	// $max_upload = $max_upload * 1024;
	// echo $max_upload;

	// phpinfo();
// echo date_default_timezone_get();
// echo "<br>";
// // echo date("Y-m-d H:i:s");
// require_once __DIR__.'/admin/assets/php-function/pdo-database.php';
//   $db = new DatabaseConnection();

// $servername = "example.com";
// $username = "sa";
// $password = "sa";
// $dbname = "xa_angel";

// // Create connection
// $conn = new mysqli($servername, $username, $password, $dbname);
// // Check connection
// if ($conn->connect_error) {
//     die("Connection failed: " . $conn->connect_error);
// } 

// $sql = "SELECT email, phone FROM user";
// $result = $conn->query($sql);

// if ($result->num_rows > 0) {
//     // output data of each row
//     while($row = $result->fetch_assoc()) {
//         echo "Email: " . $row["email"]. " - Phone: " . $row["phone"]. "<br>";
//     }
// } else {
//     echo "0 results";
// }
// $conn->close();
?>