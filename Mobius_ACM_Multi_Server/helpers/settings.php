<?php
if (!defined('l2jmobius')) {
    die('Direct access not permitted');
}

require_once __DIR__ . '/../classes/DB.class.php';
require_once __DIR__ . '/../vendor/autoload.php';
require_once __DIR__ . '/../helpers/locales.php';


if (!empty($_SERVER['HTTP_CLIENT_IP']))
    $user_ip = $_SERVER['HTTP_CLIENT_IP'];
elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR']))
    $user_ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
else
    $user_ip = $_SERVER['REMOTE_ADDR'];

$repository = Dotenv\Repository\RepositoryBuilder::createWithNoAdapters()->addAdapter(Dotenv\Repository\Adapter\EnvConstAdapter::class);
$dotenv = Dotenv\Dotenv::create($repository->immutable()->make(), __DIR__ . '/..');
$dotenv->safeLoad();

$appName = $_ENV['APP_NAME'];
$appURL = $_ENV['APP_SCHEME'] . '://' . $_ENV['APP_DOMAIN'];
$cdnURL = $_ENV['APP_SCHEME'] . '://' . $_ENV['APP_CDN'];

$dbhost = $_ENV['DB_HOST'];
$dbuser = $_ENV['DB_USER'];
$dbpass = $_ENV['DB_PASS'];
$dbname = $_ENV['DB_NAME'];

$demoMode = false;
if(isset($_ENV['DEMO_MODE']))
	$demoMode = filter_var($_ENV['DEMO_MODE']??false, FILTER_VALIDATE_BOOLEAN);


$appControllers = dirname(__FILE__) . '/../controllers/';
$appViews = dirname(__FILE__) . '/../views/';
$appHelpers = dirname(__FILE__) . '/';
$appClasses = dirname(__FILE__) . '/../classes/';
$emailTemplates = dirname(__FILE__) . '/../email-templates/';
$localesDir = dirname(__FILE__) . '/../email-templates/';

$droot = realpath(__DIR__);
if (!str_ends_with($droot, '/')) {
    $droot .= '/';
}
define('LOCALES_DIR', realpath($droot . '..') . DIRECTORY_SEPARATOR . 'locale');

$controllersWithoutLogin= array('login', '404', 'webhooks', 'reset-password', 'verify-account');

date_default_timezone_set('Europe/Athens');

session_name('L2jMobiusSession');
session_start();

$config = array(
    'dsn' => 'mysql:host=' . $dbhost . ';dbname=' . $dbname . '',
    'user' => $dbuser,
    'pass' => $dbpass,
    'args' => array(
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8mb4"
    )
);
$db = new DB($config);

$db_games = [];
$gameservers = [];

if(isset($_COOKIE['selected_gs']) && isset($_ENV['GS'.$_COOKIE['selected_gs'].'_ACTIVE']))
	$selected_gameserver = $_COOKIE['selected_gs'];
else {
	$selected_gameserver = 1;
}

for($i = 1; $i <=8; $i++){
	if(!empty($_ENV['GS'.$i.'_DB_HOST'])){
		if(isset($_ENV['GS'.$i.'_ACTIVE']))
			$isActive = filter_var($_ENV['GS'.$i.'_ACTIVE']??false, FILTER_VALIDATE_BOOLEAN);
		if(!$isActive)
			continue;
		if($i == $selected_gameserver){
			$config = array(
				'dsn' => 'mysql:host=' . $_ENV['GS'.$i.'_DB_HOST'] . ';dbname=' . $_ENV['GS'.$i.'_DB_NAME'] . '',
				'user' => $_ENV['GS'.$i.'_DB_USER'],
				'pass' => $_ENV['GS'.$i.'_DB_PASS'],
				'args' => array(
					PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
					PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8mb4"
				)
			);
			$db_game = new DB($config);
		}
		$gameservers[$i] = array(
			'name'=>$_ENV['GS'.$i.'_NAME'],
			'host'=>$_ENV['GS'.$i.'_GAME_HOST'],
			'port'=>$_ENV['GS'.$i.'_GAME_PORT']
		);
	}
}

checkUpdates();


require_once $appClasses.'Settings.class.php';
$settings = new Settings($db);


if(isset($_SESSION['account'])){
	$sql = 'SELECT * FROM accounts WHERE login = ?';
	$params = array($_SESSION['account']);
	$account = $db->row($sql, $params);
	if(!isset($account->login)){
		unset($_SESSION['account']);
	}
	else {
		$account->isAdmin = false;
		if($account->accessLevel >= 100)
			$account->isAdmin = true;
		
		if($settings->check('use_balance')){
			$sql = 'SELECT value FROM account_data WHERE account_name = ? AND var = ?';
			$params = array($account->login, 'donations_balance');
			$row = $db->row($sql, $params);
			if(!empty($row->value))
				$account->balance = floatval($row->value);
			else
				$account->balance = 0;
		}
	}
}