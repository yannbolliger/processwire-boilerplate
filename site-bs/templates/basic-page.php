<?php namespace ProcessWire;

// basic-page.php template file

// if the rootParent (section) page has more than 1 child, then render
// section navigation in the sidebar (see _func.php for renderNavTree).

if ($page->rootParent->hasChildren > 1) {
	$sidebar = renderNavTree($page->rootParent, 3);
	
	$sidebar .= $page->sidebar;
}
