<?
require_once __DIR__.'/config-loader.php';
$siteConfig = loadConfigIni(__DIR__."/../../data/config/site.config.ini");
$frontendBaseUrl = $siteConfig['web-config']['web_url'];
$WebName = $siteConfig['web-config']['web_name'];
$AppName = $siteConfig['web-config']['app_name'];
$mainLogo = $siteConfig['web-config']['main_logo_color'];

// File size
if(!defined('_BYTE'))
  define('_BYTE', 1024);

if(!defined('_KB'))
  define('_KB', 1024);

if(!defined('_MB'))
  define('_MB', 1048576);

if(!defined('_GB'))
  define('_GB', 1073741824);

if(!defined('_TB'))
  define('_TB', 1099511627776);

if(!defined('_FILE_UPLOAD_MAX_SIZE'))
  define('_FILE_UPLOAD_MAX_SIZE', (intval($siteConfig['system-config']['max_upload_size']) * _KB) * _BYTE);

function searchArrayByValue($arr, $k, $v, $typeCheck = false) {
  foreach($arr as $key => $val){
      if($val[$k]==$v){
        if($typeCheck===true){
          if(gettype($v) == gettype($val[$k]))
            return $val;
          else
            return false;
        }
        return $val;
      }
  }
  return null;
}

function getAge($birthDate) {
  list($y,$m,$d) = explode("-", $birthDate);
  $age = (date("md", date("U", mktime(0, 0, 0, $m, $d, $y))) > date("md") ? ((date("Y") - $y) - 1) : (date("Y") - $y));
  return $age;
}

function numberFormat($number, $decimalPoint = 2, $decimalSeparater = ".", $thousandSeparater = ",", $removeZeroDecimal = false){
  $n = number_format($number, $decimalPoint, $decimalSeparater, $thousandSeparater);
  if($removeZeroDecimal===true){
    $n = preg_replace("/\.?0*$/",'',$n);
  }
  return $n;
}

function isImageHorizontal($path){
  list($w, $h) = getimagesize($path);
  if($w > $h)
    return true;
  return false;
}

function parseTemplate($tmpl, $param){
  $tmpl = trim(preg_replace('/\\\\/','',$tmpl));
  $replaceKey = array();
  $replaceValue = array();
  foreach ($param as $key => $value){
    $replaceKey[] = $key;
    $replaceValue[] = $value;
  }
  $tmpl = str_replace($replaceKey,$replaceValue,$tmpl);
  return $tmpl;
}

function checktime($hour, $min, $sec) {
  if (intval($hour) < 0 || intval($hour) > 23 || !is_numeric($hour))
    return false;
  if (intval($min) < 0 || intval($min) > 59 || !is_numeric($min))
    return false;
  if (intval($sec) < 0 || intval($sec) > 59 || !is_numeric($sec))
    return false;
  return true;
}

function getFileExtension($filename, $lettercase = 'lowercase'){
  if($lettercase=='lowercase')
    return strtolower(pathinfo($filename, PATHINFO_EXTENSION));
  else if($lettercase=='uppercase')
    return strtoupper(pathinfo($filename, PATHINFO_EXTENSION));
  return pathinfo($filename, PATHINFO_EXTENSION);
}

function getImageMIMEType($filename){
  $type = exif_imagetype($filename);
  $mime = "image/";
  switch ($type) {
    case 1:   $mime .= 'gif';       break;
    case 2:   $mime .= 'jpeg';      break;
    case 3:   $mime .= 'png';       break;
    case 4:   $mime .= 'swf';       break;
    case 5:   $mime .= 'psd';       break;
    case 6:   $mime .= 'bmp';       break;
    case 7:   $mime .= 'tiff_ii';   break;
    case 8:   $mime .= 'tiff_mm';   break;
    case 9:   $mime .= 'jpc';       break;
    case 10:  $mime .= 'jp2';       break;
    case 11:  $mime .= 'jpx';       break;
    case 12:  $mime .= 'jb2';       break;
    case 13:  $mime .= 'swc';       break;
    case 14:  $mime .= 'iff';       break;
    case 15:  $mime .= 'wbmp';      break;
    case 15:  $mime .= 'xbm';       break;
    case 15:  $mime .= 'ico';       break;
    case 15:  $mime .= 'webp';      break;
    default:  $mime =  '';          break;
  }
  return $mime;
}

function validateData($type, $value){
  if($type=='name'){
    return !preg_match('/[&<>]/', $value);
  }
  elseif($type=='username'){
    return preg_match('/^[-\w.]+$/', $value);
  }
  elseif($type=='password'){
    return preg_match_all('/^[\w\s!#\$%&\(\)*\+,\-\.\/:;<=>\?@\[\\]\^_`\{\|\}~\"\']+$/', $value);
  }
  elseif($type=='email'){
    return filter_var($value, FILTER_VALIDATE_EMAIL);
  }
  elseif($type=='phone'){
    return preg_match('/^[\d\+\-\(\)]+$/', $value);
  }
  elseif($type=='slug'){
    return preg_match('/^[-\w]+$/', $value);
  }
  elseif($type=='numeric'){
    return preg_match('/^[\d]+$/', $value);
  }
  return false;
}

function validateFileToUpload($file, $format, $uploadDir, $extensions, $minDimensions = false, $maxDimensions = false, $maxSize = false){
  try{
    $ext = getFileExtension($file["name"]);
    if($format == 'image'){
      // Check if image file is a actual image or fake image
      $check = getimagesize($file["tmp_name"]);
      if($check === false) {
        return 2;
      }
      list($iW, $iH) = getimagesize($file["tmp_name"]);
      if($minDimensions!==false){
        list($minW, $minH) = explode(",", $minDimensions);
        if($iW < $minW || $iH < $minH){
          return 2;
        }
      }
      if($maxDimensions!==false){
        list($maxW, $maxH) = explode(",", $maxDimensions);
        if($iW > $maxW || $iH > $maxH){
          return 2;
        }
      }
    }
    $extensions = explode(",", $extensions);
    if(!in_array($ext, $extensions)){
      return 3;
    }
    if($maxSize!==false){
      // Check file size
      if ($file["size"] > $maxSize){
          return 4;
      }
    }
    switch ($file['error']){
      case UPLOAD_ERR_OK:
        break;
      case UPLOAD_ERR_NO_FILE:
        return 5;
      case UPLOAD_ERR_INI_SIZE:
        return 5;
      case UPLOAD_ERR_FORM_SIZE:
        return 5;
      default:
        return 5;
    }
    if(is_dir($uploadDir) && is_writable($uploadDir) && file_exists($uploadDir)){
        return 1;
    }else{
      return 6;
    }
  }catch(Exception $e){
    return 0;
  }
}

function randomFileName(){
  return md5(round(microtime(true)).getToken(20));
}

function createInputFileAcceptAttr($exts, $format = 'image'){
  $exts = gettype($exts)=='string' ? explode(",", $exts) : $exts;
  for($i=0; $i < count($exts); $i++){ 
    $exts[$i] = $format . "/" .$exts[$i];
  }
  return implode(",", $exts);
}

function toReadableDateTime($timestamp){
  global $txt_var;
  list($y, $m, $d) = explode("-", date("Y-m-d", $timestamp));
  return $d . " " . $txt_var['months_name'][intval($m-1)] . " " . $y;
}

function parseContentHTML($content, $io = "i"){
  if($io == "i"){
    return htmlspecialchars(addslashes($content));
  }
  else if($io == "o"){
    return stripslashes(htmlspecialchars_decode($content));
  }
  return "";
}
function getContentPreview($htmlString, $specificTag = "p"){
  if($specificTag == "auto")
    return closeTags(getHTMLBeforeReadMoreTag($htmlString));
  else if($specificTag == "p")
    return closeTags(getHTMLFirstParagraph($htmlString));
  return "";
}

function getHTMLBeforeReadMoreTag($htmlString){
  $rmTag   = "<!--more-->";
  if(strpos($htmlString, $rmTag) !== false){
    $splitHTML = explode($rmTag, $htmlString);
    return $splitHTML[0];
  }else{
    return getHTMLFirstParagraph($htmlString);
  }
  return "";
}

function getHTMLFirstParagraph($htmlString){
  // $htmlString = substr($htmlString, strpos($htmlString, "<p"), strpos($htmlString, "</p>")+4);
  // $htmlString = str_replace("<p>", "", str_replace("<p/>", "", $htmlString));
  // return $htmlString;
  $dom = new DOMDocument();
  $htmlString = mb_convert_encoding($htmlString, 'HTML-ENTITIES', 'UTF-8');
  $dom->loadHTML($htmlString);
  $xp = new DOMXPath($dom);
  $res = $xp->query('//p');
  $firstParagraph = $res[0]->nodeValue;
  $firstParagraph = str_replace("<p>", "", str_replace("<p/>", "", $firstParagraph));
  return $firstParagraph;
}

function cleanContentTag($content){
  $content = strip_tags($content);
  $content = html_entity_decode($content);
  return $content;
}

function closeTags($html){
    preg_match_all('#<(?!meta|img|br|hr|input\b)\b([a-z]+)(?: .*)?(?<![/|/ ])>#iU', $html, $result);
    $openedtags = $result[1];
    preg_match_all('#</([a-z]+)>#iU', $html, $result);
    $closedtags = $result[1];
    $len_opened = count($openedtags);
    if (count($closedtags) == $len_opened) {
        return $html;
    }
    $openedtags = array_reverse($openedtags);
    for ($i=0; $i < $len_opened; $i++) {
        if (!in_array($openedtags[$i], $closedtags)) {
            $html .= '</'.$openedtags[$i].'>';
        } else {
            unset($closedtags[array_search($openedtags[$i], $closedtags)]);
        }
    }
    return $html;
} 

function checkScheduleTimeFormat($intervals){
  foreach($intervals as $key => $value){
    for($i=0; $i < count($value); $i++){
      $time = explode(" ", $value[$i]);
      list($h, $m, $s) = explode(":", $time[1]);
      if(!checktime($h, $m, $s))
        return false;
    }
  }
  return true;
}
// radaio program function
function checkScheduleTimeOverlap($intervals){
  # Examplr parameter
  # $intervals = array(
  #   '0' => array('2019-05-26 00:00:00', '2019-05-26 09:59:00'),
  #   '1' => array('2019-05-26 10:00:00', '2019-05-26 12:59:00'),
  #   '2' => array('2019-05-26 13:00:00', '2019-05-26 15:29:00'),
  # );
  foreach($intervals as $key => $value){
    $start  =   strtotime($value[0]);
    $end    =   strtotime($value[1]);
    foreach($intervals as $key2 => $value2){
      if($key != $key2){
        for($i=0; $i < count($value2); $i++){ 
          $timestamp = strtotime($value2[$i]);
          if($timestamp >= $start && $timestamp <= $end){
            // echo "The date $value2[$i] is within our date range $value[0] - $value[1] <br />";
            return false;
          }
        }
      }
    }
  }
  return true;
  }
// end radaio program function

//RANDOM STRING WITH SPECIFIC CHARACTERS AND LENGTH 
function getToken($length=false) {
  $token = "";
  if($length===false || !is_numeric($length)) {
    //RANDOM STRING AND HASH
    //result is random string 64 characters lenght
    $token = hash('sha256',uniqid(mt_rand()));
  } else {
      $codeAlphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
      $codeAlphabet.= "abcdefghijklmnopqrstuvwxyz";
      $codeAlphabet.= "0123456789";
      $max = strlen($codeAlphabet); // edited
      for ($i=0; $i < $length; $i++) {
          $token .= $codeAlphabet[crypto_rand_secure(0, $max-1)];
      }
  }
    return $token;
}

function crypto_rand_secure($min, $max) {
    $range = $max - $min;
    if ($range < 1) return $min; // not so random...
    $log = ceil(log($range, 2));
    $bytes = (int) ($log / 8) + 1; // length in bytes
    $bits = (int) $log + 1; // length in bits
    $filter = (int) (1 << $bits) - 1; // set all lower bits to 1
    do {
        $rnd = hexdec(bin2hex(openssl_random_pseudo_bytes($bytes)));
        $rnd = $rnd & $filter; // discard irrelevant bits
    } while ($rnd > $range);
    return $min + $rnd;
}

// RANDOM STRING AND HASH
// result is random string 64 characters lenght
function getRndSHA256Token() {
  return hash('sha256',uniqid(mt_rand()));
}
// PHP OPENSSL ENCRYTION/DECRYPTION
// see reference: http://php.net/manual/en/function.openssl-encrypt.php
// openssl functions  won't be available by default, you can enable this extension in your php.ini file by uncommenting the line. ;extension=php_openssl.dll by removing the leading ;
// $key previously generated safely, ie: openssl_random_pseudo_bytes
$key = base64_encode(openssl_random_pseudo_bytes(32)); //generate private key
$cipher = "AES-128-CBC"; // cipher method. see reference: http://php.net/manual/en/function.openssl-get-cipher-methods.php 
$options = OPENSSL_RAW_DATA;
$as_binary = true;
// iv = Initialization Vector
//encryption method
function data_encrypt($plain_str) {
  global $key, $cipher, $options, $as_binary;
  $ivlen = openssl_cipher_iv_length($cipher);
  $iv = openssl_random_pseudo_bytes($ivlen);
  $ciphertext_raw = openssl_encrypt($plain_str, $cipher, $key, $options, $iv);
  $hmac = hash_hmac('sha256', $ciphertext_raw, $key, $as_binary);
  $ciphertext = base64_encode( $iv.$hmac.$ciphertext_raw );
  return $ciphertext;
}
//decryption method
function data_decrypt($enc_str) {
  global $key, $cipher, $options, $as_binary;
  $sha2len = 32;
  $c = base64_decode($enc_str);
  $ivlen = openssl_cipher_iv_length($cipher);
  $iv = substr($c, 0, $ivlen);
  $hmac = substr($c, $ivlen, $sha2len);
  $ciphertext_raw = substr($c, $ivlen+$sha2len);
  $original_plaintext = openssl_decrypt($ciphertext_raw, $cipher, $key, $options, $iv);
  $calcmac = hash_hmac('sha256', $ciphertext_raw, $key, $as_binary);
   
  if (hash_equals($hmac, $calcmac))//PHP 5.6+ timing attack safe comparison
  {
      return $original_plaintext;
  }else {
    return false;
  }
}

function GetArticleURL($title, $slug){
  // urlencode
  // return "post.php?read=".str_replace(" ", "+", $title) . "&s=" . $slug;
  return "post.php?read=".urlencode($title) . "&s=" . $slug;

}
?>
