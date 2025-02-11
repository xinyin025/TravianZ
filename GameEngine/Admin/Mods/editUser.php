<?php
#################################################################################
##              -= YOU MAY NOT REMOVE OR CHANGE THIS NOTICE =-                 ##
## --------------------------------------------------------------------------- ##
##  Filename       editUser.php                                                ##
##  Developed by:  aggenkeech                                                  ##
##  License:       TravianZ Project                                            ##
##  Copyright:     TravianZ (c) 2010-2025. All rights reserved.                ##
##                                                                             ##
#################################################################################
if (!isset($_SESSION)) session_start();
if($_SESSION['access'] < 9) die("Access Denied: You are not Admin!");
include_once("../../config.php");

// go max 5 levels up - we don't have folders that go deeper than that
$autoprefix = '';
for ($i = 0; $i < 5; $i++) {
    $autoprefix = str_repeat('../', $i);
    if (file_exists($autoprefix.'autoloader.php')) {
        // we have our path, let's leave
        break;
    }
}

include_once($autoprefix."GameEngine/Database.php");

foreach ($_POST as $key => $value) {
    $_POST[$key] = $database->escape($value);
}

$session = (int) $_POST['admid'];
$id = (int) $_POST['id'];

$sql = mysqli_query($GLOBALS["link"], "SELECT * FROM ".TB_PREFIX."users WHERE id = ".$session."");
$access = mysqli_fetch_array($sql);
$sessionaccess = $access['access'];

if($sessionaccess != 9) die("<h1><font color=\"red\">Access Denied: You are not Admin!</font></h1>");

mysqli_query($GLOBALS["link"], "UPDATE ".TB_PREFIX."users SET 
	email = '".$_POST['email']."', 
	tribe = ".(int) $_POST['tribe'].", 
	location = '".$_POST['location']."', 
	desc1 = '".$_POST['desc1']."', 
	desc2 = '".$_POST['desc2']."', 
	quest = '".$_POST['quest']."' 
	WHERE id = $id") or die(mysqli_error($database->dblink));

header("Location: ../../../Admin/admin.php?p=player&uid=".$id."");
?>