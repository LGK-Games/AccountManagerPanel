<?php
if (!defined('l2jmobius')) {
    die('Direct access not permitted');
}

$page = array(
    'title'=>_('Characters')
);

if(isset($_POST['change_gs'])){
	setcookie("selected_gs", $_POST['change_gs'], intval(time()+2592000000), '/');
	header('Content-Type: application/json; charset=utf-8');
	echo json_encode(array('success'=>true));
	exit;
}

if(isset($_GET['unstuck'])){
	$sql = 'SELECT charId, char_name, online FROM characters WHERE charId = ? AND account_name = ?';
	$params = array($_GET['unstuck'], $account->login);
	$character = $db_game->row($sql, $params);
	if(!isset($character->charId)){
		$_SESSION['alert'] = array(
			'type'=>'danger',
			'message'=>_('Character does not exist.')
		);
		header("Location: ".$appURL."/".$language_id);
		exit;
	}
	if($character->online == 1) {
		$_SESSION['alert'] = array(
			'type'=>'danger',
			'message'=>_('Your character is online. You must first log it out of the game.')
		);
		header("Location: ".$appURL."/".$language_id);
		exit;
	}
	
	$sql = 'SELECT val FROM character_variables WHERE charId = ? AND var = ?';
	$params = array($character->charId, 'last_unstuck');
	$last_unstuck = $db_game->row($sql, $params);
	
	if(isset($last_unstuck->val) && $last_unstuck->val > date('Y-m-d H:i:s', intval(time() - 1800))){
		$_SESSION['alert'] = array(
			'type'=>'danger',
			'message'=>_('You can only use this function once every 20 minutes.')
		);
		header("Location: ".$appURL."/".$language_id);
		exit;
	}

	
	$db_game->update('characters', array('x'=>'83644', 'y'=>'149446', 'z'=>'-3400'), array('charId'=>$character->charId));
	
	if(isset($last_unstuck->val)){
		$db_game->update('character_variables', array('val'=>date('Y-m-d H:i:s')), array('charId'=>$character->charId, 'var'=>'last_unstuck'));
	}
	else {
		$db_game->insert('character_variables', array('charId'=>$character->charId, 'var'=>'last_unstuck', 'val'=>date('Y-m-d H:i:s')));
	}
	
	$_SESSION['alert'] = array(
		'type'=>'success',
		'message'=>_('Your character has been teleported to Giran Castle Town.')
	);
	header("Location: ".$appURL."/".$language_id);
	exit;
}

$sql = 'SELECT charId, char_name, level, title, accesslevel, online, classid, lastAccess FROM characters WHERE account_name = ?';
$params = array($account->login);
$characters = $db_game->fetch($sql, $params);

if(isset($_SESSION['alert'])){
	$alert = $_SESSION['alert'];
	unset($_SESSION['alert']);
}

require_once $appHelpers . 'game-classes.php';