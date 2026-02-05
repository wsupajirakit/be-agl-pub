<?
  require_once __DIR__.'/check_user_session.php';
  require_once __DIR__.'/assets/php-function/pdo-database.php';
  require_once __DIR__.'/assets/php-function/function.php';
  require_once __DIR__.'/assets/message_var/th.php';
?>
<!DOCTYPE html>
<html lang="th">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no" />

  <link rel="apple-touch-icon" sizes="57x57" href="../logo/favicon/apple-icon-57x57.png" />
  <link rel="apple-touch-icon" sizes="60x60" href="../logo/favicon/apple-icon-60x60.png" />
  <link rel="apple-touch-icon" sizes="72x72" href="../logo/favicon/apple-icon-72x72.png" />
  <link rel="apple-touch-icon" sizes="76x76" href="../logo/favicon/apple-icon-76x76.png" />
  <link rel="apple-touch-icon" sizes="114x114" href="../logo/favicon/apple-icon-114x114.png" />
  <link rel="apple-touch-icon" sizes="120x120" href="../logo/favicon/apple-icon-120x120.png" />
  <link rel="apple-touch-icon" sizes="144x144" href="../logo/favicon/apple-icon-144x144.png" />
  <link rel="apple-touch-icon" sizes="152x152" href="../logo/favicon/apple-icon-152x152.png" />
  <link rel="apple-touch-icon" sizes="180x180" href="../logo/favicon/apple-icon-180x180.png" />
  <link rel="icon" type="image/png" sizes="192x192"  href="../logo/favicon/android-icon-192x192.png" />
  <link rel="icon" type="image/png" sizes="32x32" href="../logo/favicon/favicon-32x32.png" />
  <link rel="icon" type="image/png" sizes="96x96" href="../logo/favicon/favicon-96x96.png" />
  <link rel="icon" type="image/png" sizes="16x16" href="../logo/favicon/favicon-16x16.png" />
  <meta name="msapplication-TileColor" content="#ffffff" />
  <meta name="msapplication-TileImage" content="/ms-icon-144x144.png" />
  <meta name="theme-color" content="#ffffff" />

  <?
    $tc_id = $_GET['id'];
    $qTopChart = $db->dbRow("SELECT * FROM top_chart WHERE top_chart_id = :id", array(':id' => $tc_id));
    if(null !== $qTopChart){
      $sql = "SELECT * FROM top_chart_song tcs INNER JOIN song s ON tcs.song_id = s.song_id WHERE tcs.top_chart_id = :tcid ORDER BY tcs.song_order ASC";
      $topChartData = $db->dbQuery($sql, array(':tcid' => $qTopChart['top_chart_id']));
      $tcListString = '';
      foreach($topChartData as $key => $value){ 
        $_lwo = empty($value['last_week_order']) ? "" : $value['last_week_order'];
        $_ocwn = empty($value['on_chart_week_number']) ? "" : $value['on_chart_week_number'];

        if($_lwo != ""){
          if(intval($value["song_order"]) < intval($_lwo)){
            $_udFaw = '<div class="tcod-icon mr-2"><i class="fas fa-chevron-circle-up tcod-up"></i></div>';
          }else if(intval($value["song_order"]) > intval($_lwo)){
            $_udFaw = '<div class="tcod-icon mr-2"><i class="fas fa-chevron-circle-down tcod-down"></i></div>';
          }else{
            $_udFaw = '<div class="tcod-icon mr-2"><i class="fas fa-minus-circle tcod-new"></i></div>';
          }
        }else{
          $_udFaw = '<div class="tcod-icon mr-2"><i class="fas fa-minus-circle tcod-new"></i></div>';
        }
        $tcListString 
        .=  '<tr>'
        .   '<td>'.$value["song_order"].'</td>'
        .   '<td><div class="d-flex">'.$_udFaw.'<span>'.$value["song_name"].'</span></div></td>'
        .   '<td>'.$value["artist_name_map"].'</td>'
        .   '<td class="text-center">' . $_lwo . '</td>'
        .   '<td class="text-center">' . $_ocwn . '</td>'
        .   '</tr>';
      }

      $dTitle = str_replace("{n}", toReadableDateTime(strtotime($qTopChart['top_chart_date'])), $txt_var['top_chart_of_date']);
      $tmpl = file_get_contents('../__tmpl_topChartTable.html');
      $tmplParam = array('{{_tc_date_}}' => $dTitle, '{{_tc_list_}}' => $tcListString, '{{_logo_dir_}}' => '../');
    }
  ?>

  <title><?=$dTitle;?></title>

  <script src="assets/lib/jquery/3.3.1/jquery.min.js"></script>
  <script src="assets/lib/popper/1.14.3/popper.min.js"></script>

  <!-- <script src="assets/lib/html2canvas/1.0.0-rc.3/html2canvas.min.js"></script> -->
  <script src="assets/lib/html2canvas/1.0.0-rc.3/html2canvas.min1.0.0-alpha12.js"></script>
  <!-- <script src="assets/lib/html2canvas/1.0.0-rc5/html2canvas.min.js"></script> -->

  <!-- <script src="assets/lib/html2canvas/1.0.0/html2canvas.min.js"></script> -->

  <link rel="stylesheet" href="assets/lib/bootstrap/4.1.3/css/bootstrap.min.css" />
  <link rel="stylesheet" href="assets/lib/bootstrap/bootstrap-custom.css" />
  <script src="assets/lib/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  
  <link rel="stylesheet" href="assets/lib/fontawesome/5.3.1/css/all.min.css" />

  <link rel="stylesheet" href="assets/css/style.css?v=1000001" />
  <link rel="stylesheet" href="../assets/css/template.css?v=1000002" />
  <link rel="stylesheet" href="../assets/css/theme.css?v=1000001" />

  <script src="assets/js/main.js"></script>

  <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet" />
  <link href="https://fonts.googleapis.com/css?family=Bai+Jamjuree:300,300i,400,400i,500,500i,700,700i|Pattaya" rel="stylesheet" />
  
</head>
<body>
  <div class="container py-5">
    <h3><?=$dTitle;?></h3>
    <br />
    <div id="topChart">
<? 
  if(null !== $qTopChart){
?>
  <div id="topChartTable">
    <div class="top-chart-container shadow-sm my-5">
  <table class="top-chart-table table-fixed w-100">
    <colgroup><col /></colgroup>
    <thead class="main-gradient-x table-bordered text-whitex">
      <!-- <a href="https://www.freepik.com/free-photos-vectors/background">Background vector created by freepik - www.freepik.com</a> -->
      <tr>
        <th>
          <div class="py-2 d-flex flex-column flex-md-row justify-content-center align-items-center">
            <div class="tc_logo">
              <figure class="my-0 mr-4" style="width: 70px;">
                <img src="{{_logo_dir_}}logo/ga-logo-512.png" alt="a x" class="d-block w-100" />
                <!-- <img src="https://example.com/logo/ga-logo-512.png" alt="a x" class="d-block w-100" /> -->
              </figure>
            </div>
            <div class="title">
              <h3 class="mb-2" id="topChartTitle">a x TOP CHART</h3>
              <h6 class="font-weight-normal mb-0" id="TopChartDate">{{_tc_date_}}</h6>
            </div>
          </div>
        </th>
      </tr>
    </thead>
  </table>
  <table class="table table-borderlessx top-chart-table tc_result table-fixed w-100">
    <colgroup><col /><col /><col /><col /><col /></colgroup>
    <thead class="">
      <th class="text-center">#</th>
      <th>เพลง</th>
      <th>ศิลปิน</th>
      <th class="text-center">สัปดาห์ที่แล้ว</th>
      <th class="text-center">ระยะเวลาบนชาร์ต</th>
    </thead>
    <tbody id="topChartBody" style="display: table-header-group;">
      
      <tr>
    <td>1</td>
    <td>
        <div class="d-flex">
            <div class="tcod-icon mr-2"><i class="fas fa-chevron-circle-up tcod-up"></i></div><span>Lonely Night</span></div>
    </td>
    <td>เป๊ก ผลิตโชค</td>
    <td class="text-center">7</td>
    <td class="text-center">3</td>
</tr>
<tr>
    <td>2</td>
    <td>
        <div class="text-left">
            <div class="tcod-icon mr-2"><i class="fas fa-chevron-circle-down tcod-down"></i></div>
            <span>สัปดาห์ที่แล้ว</span>
          </div>
    </td>
    <td>Aliz</td>
    <td class="text-center">1</td>
    <td class="text-center">13 (No.1 : 2 Wks.)</td>
</tr>
<tr>
    <td>3</td>
    <td>
        <div class="d-flex">
            <div class="tcod-icon mr-2"><i class="fas fa-chevron-circle-up tcod-up"></i></div><span>อย่างเดิมได้ไหม</span></div>
    </td>
    <td>ต้น ธนษิต</td>
    <td class="text-center">4</td>
    <td class="text-center">6</td>
</tr>
<tr>
    <td>4</td>
    <td>
        <div class="d-flex">
            <div class="tcod-icon mr-2"><i class="fas fa-chevron-circle-up tcod-up"></i></div><span>หน้าที่ของความรัก (Mission)</span></div>
    </td>
    <td>PAUSE Feat เล็ก พงษธร</td>
    <td class="text-center">5</td>
    <td class="text-center">8</td>
</tr>
<tr>
    <td>5</td>
    <td>
        <div class="d-flex">
            <div class="tcod-icon mr-2"><i class="fas fa-chevron-circle-up tcod-up"></i></div><span>ไม่อยากเหงาแล้ว</span></div>
    </td>
    <td>INK WARUNTORN Feat MEYOU</td>
    <td class="text-center">10</td>
    <td class="text-center">3</td>
</tr>
<tr>
    <td>6</td>
    <td>
        <div class="d-flex">
            <div class="tcod-icon mr-2"><i class="fas fa-chevron-circle-up tcod-up"></i></div><span>รักติดไซเรน (My Ambulance)</span></div>
    </td>
    <td>ไอซ์ พาริส Feat แพรวา ณิชาภัทร</td>
    <td class="text-center">16</td>
    <td class="text-center">3</td>
</tr>
<tr>
    <td>7</td>
    <td>
        <div class="d-flex">
            <div class="tcod-icon mr-2"><i class="fas fa-chevron-circle-down tcod-down"></i></div><span>ทีมรอเธอ</span></div>
    </td>
    <td>Three Man Down</td>
    <td class="text-center">6</td>
    <td class="text-center">6</td>
</tr>
<tr>
    <td>8</td>
    <td>
        <div class="d-flex">
            <div class="tcod-icon mr-2"><i class="fas fa-chevron-circle-down tcod-down"></i></div><span>เรา</span></div>
    </td>
    <td>Cocktail</td>
    <td class="text-center">2</td>
    <td class="text-center">9</td>
</tr>
<tr>
    <td>9</td>
    <td>
        <div class="d-flex">
            <div class="tcod-icon mr-2"><i class="fas fa-chevron-circle-up tcod-up"></i></div><span>เข็มนาฬิกา</span></div>
    </td>
    <td>Alyn</td>
    <td class="text-center">19</td>
    <td class="text-center">2</td>
</tr>
<tr>
    <td>10</td>
    <td>
        <div class="d-flex">
            <div class="tcod-icon mr-2"><i class="fas fa-chevron-circle-down tcod-down"></i></div><span>มาตรฐานสูง</span></div>
    </td>
    <td>Marc Tachapon</td>
    <td class="text-center">3</td>
    <td class="text-center">6</td>
</tr>
<tr>
    <td>11</td>
    <td>
        <div class="d-flex">
            <div class="tcod-icon mr-2"><i class="fas fa-chevron-circle-up tcod-up"></i></div><span>รางวัลปลอบใจ</span></div>
    </td>
    <td>ส้ม มารี Feat Lazyloxy</td>
    <td class="text-center">15</td>
    <td class="text-center">14</td>
</tr>
<tr>
    <td>12</td>
    <td>
        <div class="d-flex">
            <div class="tcod-icon mr-2"><i class="fas fa-chevron-circle-down tcod-down"></i></div><span>นี่ฉันเอง</span></div>
    </td>
    <td>LIPTA Feat Kob Flat Boy</td>
    <td class="text-center">8</td>
    <td class="text-center">4</td>
</tr>
<tr>
    <td>13</td>
    <td>
        <div class="d-flex">
            <div class="tcod-icon mr-2"><i class="fas fa-chevron-circle-up tcod-up"></i></div><span>ยังจำได้ไหม</span></div>
    </td>
    <td>Scrubb</td>
    <td class="text-center">14</td>
    <td class="text-center">4</td>
</tr>
<tr>
    <td>14</td>
    <td>
        <div class="d-flex">
            <div class="tcod-icon mr-2"><i class="fas fa-chevron-circle-down tcod-down"></i></div><span>ภาวนา</span></div>
    </td>
    <td>MEYOU</td>
    <td class="text-center">11</td>
    <td class="text-center">6</td>
</tr>
<tr>
    <td>15</td>
    <td>
        <div class="d-flex">
            <div class="tcod-icon mr-2"><i class="fas fa-chevron-circle-down tcod-down"></i></div><span>ถ้าฉันเป็นเขา</span></div>
    </td>
    <td>INDIGO</td>
    <td class="text-center">9</td>
    <td class="text-center">15 (No.1 : 4 Wks.)</td>
</tr>
<tr>
    <td>16</td>
    <td>
        <div class="d-flex">
            <div class="tcod-icon mr-2"><i class="fas fa-chevron-circle-up tcod-up"></i></div><span>วินาทีสุดท้าย</span></div>
    </td>
    <td>THE DRIVE Feat น้ำ Aliz</td>
    <td class="text-center">20</td>
    <td class="text-center">2</td>
</tr>
<tr>
    <td>17</td>
    <td>
        <div class="d-flex">
            <div class="tcod-icon mr-2"><i class="fas fa-chevron-circle-down tcod-down"></i></div><span>คนที่ใช่ไม่ต้องพยายาม</span></div>
    </td>
    <td>BEAN NAPASON</td>
    <td class="text-center">12</td>
    <td class="text-center">7</td>
</tr>
<tr>
    <td>18</td>
    <td>
        <div class="d-flex">
            <div class="tcod-icon mr-2"><i class="fas fa-minus-circle tcod-new"></i></div><span>กอดได้ไหม</span></div>
    </td>
    <td>ETC</td>
    <td class="text-center">18</td>
    <td class="text-center">4</td>
</tr>
<tr>
    <td>19</td>
    <td>
        <div class="d-flex">
            <div class="tcod-icon mr-2"><i class="fas fa-chevron-circle-down tcod-down"></i></div><span>เสี่ยว</span></div>
    </td>
    <td>Ammy The Bottom Blues Feat Na Polycat</td>
    <td class="text-center">13</td>
    <td class="text-center">10</td>
</tr>
<tr>
    <td>20</td>
    <td>
        <div class="d-flex">
            <div class="tcod-icon mr-2"><i class="fas fa-minus-circle tcod-new"></i></div><span>ดวงใจ</span></div>
    </td>
    <td>PALMY</td>
    <td class="text-center"></td>
    <td class="text-center">1(NEW)</td>
</tr>


    </tbody>
  </table>
</div>
  </div>
  <div class="btn-group" role="group" id="download-group">
    <button id="btnGroupDrop" type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-download mr-2"></i><?=$txt_var['download_radio_program_image'];?></button>
    <div class="dropdown-menu" aria-labelledby="btnGroupDrop" id="btnGroupDropList"></div>
  </div>

  <script>
  	console.log(`<?=$tcListString;?>`)
    // allowTaint: true, foreignObjectRendering: true, 
    window.onload = function(){
      showLoader(true);
      $('#download-group').button('toggle');
      $('.top-chart-container').removeClass('shadow-sm');
      $('.top-chart-container').removeClass('my-5');
      var targetTable = document.querySelector("#topChartTable");
      $(targetTable).css('width', '900px');
      html2canvas(targetTable, { scale: 1, }).then(canvas=>{
        $(targetTable).css('width', '');
        var url = canvas.toDataURL("image/png", 1.0);
        $('#capture').attr("src", url);
        var _link = document.createElement('A');
        _link.innerText = "<?=$txt_var['image'];?>";
        _link.className = "dropdown-item";
        _link.href = url;
        _link.download = "xa top chart " + "<?=$dTitle;?>" + ".png";
        document.getElementById('btnGroupDropList').appendChild(_link);
        setTimeout( showLoader(false) , 300);
      });
    }
  </script>
<?
  }
?>
  </div>
</div>
<div class="">
  <img src="" id="capture" alt="">
</div>
<? include 'loader_dom.html'; ?>
</body>
</html>