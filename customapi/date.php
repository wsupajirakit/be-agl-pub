<?php


$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://www.example.com/webservice/TopChartList.php",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_HTTPHEADER => array(
    "Accept: */*",
    "Cache-Control: no-cache",
    "Connection: keep-alive",
    "Host: www.example.com",
    "User-Agent: PostmanRuntime/7.13.0",
    "accept-encoding: gzip, deflate",
    "cache-control: no-cache"
  ),
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
  echo "cURL Error #:" . $err;
} else {



  $data = json_decode($response,true);
    foreach($data["result"] as $item) {
        $date =$item['date'];
        $data_array[] =
          array(
          'key' => $date,
          'label' => $date,
     );
    }



}


 echo json_encode($data_array);

?>
