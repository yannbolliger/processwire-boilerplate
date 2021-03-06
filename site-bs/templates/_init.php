<?php namespace ProcessWire;

/**
 * Initialize variables output in _main.php
 *
 * Values populated to these may be changed as desired by each template file.
 * You can setup as many such variables as you'd like.
 *
 * This file is automatically prepended to all template files as a result of:
 * $config->prependTemplateFile = '_init.php'; in /site/config.php.
 *
 */

// Variables for regions we will populate in _main.php
// Here we also assign default values for each of them.
$title = $page->get('title');
$content = $page->body;
$sidebar = "";

// We refer to our homepage a few times in our site, so
// we preload a copy here in $homepage for convenience.
$homepage = $pages->get('/');

// Set this to true if you don't want to render the main layout.
$disableMain = false;

// Include shared functions
include_once("./_func.php");
