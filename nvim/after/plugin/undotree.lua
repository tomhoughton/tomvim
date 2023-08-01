vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle<?php
// Include this file in your PHP scripts to auto load
// class files on the fly. removes the need to maintain
// a large number of includes at the start of a file

function __autoload($class_name) {
	
	// Check class can be loaded and throw exception if it is not
	$toLoad = dirname(__FILE__) . '/classes/' . $class_name . '.class.php';
	if(file_exists($toLoad)) {
		require_once($toLoad);
		return;
	}
	
	$toLoad = dirname(__FILE__) . '/../common-lang/' . $class_name . '.php';
	if(file_exists($toLoad)) {
		require_once($toLoad);
		return;
	}
	
	throw new Exception("Failed to find class ${class_name} in search path");
}
?>php
// Include this file in your PHP scripts to auto load
// class files on the fly. removes the need to maintain
// a large number of includes at the start of a file

function __autoload($class_name) {
	
	// Check class can be loaded and throw exception if it is not
	$toLoad = dirname(__FILE__) . '/classes/' . $class_name . '.class.php';
	if(file_exists($toLoad)) {
		require_once($toLoad);
		return;
	}
	
	$toLoad = dirname(__FILE__) . '/../common-lang/' . $class_name . '.php';
	if(file_exists($toLoad)) {
		require_once($toLoad);
		return;
	}
	
	throw new Exception("Failed to find class ${class_name} in search path");
}
?>)
