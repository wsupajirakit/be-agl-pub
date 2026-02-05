<?
  require_once 'pdo-database.php';
  require_once __DIR__.'/config-loader.php';
  require_once __DIR__.'/../lib/firebase-php-jwt/5.0.0/JWT.php';
  require_once __DIR__.'/../lib/firebase-php-jwt/5.0.0/BeforeValidException.php';
  require_once __DIR__.'/../lib/firebase-php-jwt/5.0.0/ExpiredException.php';
  require_once __DIR__.'/../lib/firebase-php-jwt/5.0.0/SignatureInvalidException.php';
  use \Firebase\JWT\JWT;
  /**
   * 
   */
  class UserAuthentication{
    # @object - database connection object 
    private $db;
    # @string - jwt config file path
    private $jwtConfigPath = __DIR__.'/../../data/config/jwt.config.ini';
    # @boolean | array jwt config data
    private $jwtConfig = false;
    private $allowedAudience = array(
      'example.com'
    );
    function __construct(){ 
      $this->db = new DatabaseConnection();
      if(file_exists(resolveConfigPath($this->jwtConfigPath))){
         $conf = loadConfigIni($this->jwtConfigPath);
         if(isset($conf['setup'])){
           $this->jwtConfig = $conf['setup'];
         }
        // $jwtFile = fopen($this->jwtConfigPath, 'r');
        // if($jwtFile){
        //   $cf = fread($jwtFile, filesize($this->jwtConfigPath));
        //   $cf = json_decode($cf, true);
        //   $this->jwtConfig = $cf['setup'];
        // }
        // fclose($jwtFile);
      }
    }
    /**
    *
    * Check is user exist in database
    * @param int $uid - user id
    * @return boolean
    *
    */
    public function CheckMemberExistance($uid){
      $sql = "SELECT COUNT(*) FROM user WHERE user_id = :uid AND active_status = 1";
      $param = array(':uid' => $uid);
      $num = $this->db->dbCount($sql, $param);
      return $num > 0 ? true : false;
    }
    public function GetJWTRefreshToken($args){
      if($this->jwtConfig!==false){
        if(isset($args['renew_value']) && $args['renew_value']=='token'){
          if(!$this->VerfiyJWToken($args['token'], 'refreshToken'))
            return false;
          $tokenData = $this->DecodeJWToken($args['token'], 'refreshToken');
          $userData = $this->db->dbRow("SELECT * FROM user WHERE user_id = :uid AND active_status = 1", array(':uid' => $tokenData['uid']));
          if($userData===null)
            return false;
          
          $aud = $tokenData['aud'];
          $stay = $tokenData['stay']=='yes' ? true : false;
        }else{
          $userData = $this->db->dbRow("SELECT * FROM user WHERE username = :uname AND active_status = 1", array(':uname' => $args['username']));
          if($userData===null || !password_verify($args['password'], $userData['password']) && $userData['active_status']==1)
            return false;
          $aud = $args['aud'];
          $stay = $args['stay'];
        }
        // $hash = hash_hmac($this->jwtConfig['algorithm_refresh'], md5(uniqid($now.'_'.$userData['user_id'], true)), $this->jwtConfig['secret_refresh']);
        // return $hash;
        $now = strtotime('now');
        $secret = $this->jwtConfig['secret_refresh'];
        $expiration = $stay===true ? time() + (intval($this->jwtConfig['timeToExpire_refresh_stay']) * 60) : time() + (intval($this->jwtConfig['timeToExpire_refresh']) * 60); // expire time in minute * 60
        $issuer = $this->jwtConfig['issuer_refresh'];
        $algorithm  = $this->jwtConfig['algorithm_refresh']; 
        $payload = array();
        $payload['iat'] = $now;
        $payload['nbf'] = $now;
        $payload['exp'] = $expiration;
        $payload['iss'] = $issuer;
        $payload['aud'] = $aud;
        $payload['uid'] = $userData['user_id'];
        $payload['stay'] = $stay===true ? 'yes' : 'no';
        $jwt = JWT::encode($payload, $secret, $algorithm);
        return array('token' => $jwt, 'expiration' => $expiration) ;
      }
      return false;
    }
    /**
    *
    * Generate and return Json Web Token
    * @param array $payload - array of custom payload parameters 
    * @return string - json web token
    *
    */
    public function GetJWToken($refreshToken, $payload = array()){
      if($this->jwtConfig!==false){
        if($this->VerfiyJWToken($refreshToken, 'refreshToken')===false){
          return false;
        }
        JWT::$leeway = 60;
        $decoded = JWT::decode($refreshToken, $this->jwtConfig['secret_refresh'], array($this->jwtConfig['algorithm_refresh']));
        $decoded = (array)$decoded;
        if($this->CheckMemberExistance($decoded['uid'])!==true){
          return false;
        }
        $now = strtotime('now');
        $secret = $this->jwtConfig['secret'];
        $expiration = time() + (intval($this->jwtConfig['timeToExpire']) * 60);
        $issuer = $this->jwtConfig['issuer'];
        $algorithm  = $this->jwtConfig['algorithm']; 
        $payload['iat'] = $now;
        $payload['nbf'] = $now;
        $payload['exp'] = $expiration;
        $payload['iss'] = $issuer;
        $payload['aud'] = $decoded['aud'];
        $payload['uid'] = $decoded['uid'];
        $jwt = JWT::encode($payload, $secret, $algorithm);
        // return $jwt;
        return array('token' => $jwt, 'expiration' => $expiration);
      }
      return false;
    }
    /**
    *
    * Verfiy Json Web Token
    * @param string $token - json web token
    * @return boolean
    *
    */
    public function VerfiyJWToken($token, $grantType = 'accessToken'){      
      $secret     = ($grantType == 'refreshToken') ? $this->jwtConfig['secret_refresh']    : $this->jwtConfig['secret'];
      $algorithm  = ($grantType == 'refreshToken') ? $this->jwtConfig['algorithm_refresh'] : $this->jwtConfig['algorithm']; 
      $issuer     = ($grantType == 'refreshToken') ? $this->jwtConfig['issuer_refresh']    : $this->jwtConfig['issuer'];
      try{
        JWT::$leeway = 60;
        $decoded = JWT::decode($token, $secret, array($algorithm));
        $decoded = (array)$decoded;
        if(!in_array($decoded['aud'], $this->allowedAudience)){
          return false;
        }
        if($decoded['iss'] != $issuer){
          return false;
        }
      }catch (Exception $e){
        return false;
      }
      return true;
    }
    public function DecodeJWToken($token, $grantType = 'accessToken'){      
      $secret     = ($grantType == 'refreshToken') ? $this->jwtConfig['secret_refresh']    : $this->jwtConfig['secret'];
      $algorithm  = ($grantType == 'refreshToken') ? $this->jwtConfig['algorithm_refresh'] : $this->jwtConfig['algorithm']; 
      $issuer     = ($grantType == 'refreshToken') ? $this->jwtConfig['issuer_refresh']    : $this->jwtConfig['issuer'];
      try{
        JWT::$leeway = 60;
        $decoded = JWT::decode($token, $secret, array($algorithm));
        $decoded = (array)$decoded;
        return $decoded;
      }catch (Exception $e){
        return false;
      }
      return true;
    }
    public function getJWTConfigTimeToExpire(){
      return intval($this->jwtConfig['timeToExpire']);
    }
  }
?>
