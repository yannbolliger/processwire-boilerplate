<?php namespace ProcessWire;

/**
 * /site/templates/_func.php
 *
 */


/**
* Return asset urls with a version number from git HEAD master.
*
* @param String assetPath path to file from ".../templates/"
* @return String
*/
function versionedAssetUrl($assetPath) {
 	$config = wire("config");

  $path = $config->paths->root . ".git/refs/heads/master";
  $gitCommit = substr(file_get_contents($path), 0, 6);
  return $config->urls->templates . $assetPath . "?v=" . $gitCommit;
}

/**
* Render gallery from image array for colorbox images.
*
* @param PageArray array of images to render
* @return String gallery markup
*/
function renderImages($images) {
  $output = "";

  foreach($images as $img) {
    $thumb = $img->width(400)->url;

    $output .= "
      <div>
        <a
					href='$img->url'
					class='img colorbox'
					style='background-image: url(\" $thumb \");'
				></a>
      </div>";
  }
  return "<div id='images' class='row'>{$output}</div>";
}

/**
* Truncate text to a wordwrap.
*
* @param String text
* @param int optional maximal length of the text
* @return string
*/
function truncateText($text, $maxlength = 200) {
	// for the three points at the end
	$maxlength -= 1;

	// truncate to max length
	$text = substr(strip_tags($text), 0, $maxlength);
	// check if we've truncated in the middle of a word
	if (strlen(rtrim($text, ' .!?,;')) == $maxlength) {
		// truncate to last word
		$text = substr($text, 0, strrpos($text, ' '));
	}
	return trim($text) . "&hellip;";
}

/**
 * Given a group of pages, render a simple <ul> navigation
 *
 * @param PageArray $items
 * @return string
 *
 */
function renderNav(PageArray $items) {
	$out = "";

	foreach($items as $item) {
		if ($item->id == wire("page")->rootParent->id) {
			$out .= "<li class='current' aria-current='true'>
				<span class='sr-only'>" .
					_x('Current page:', 'navigation') .
				"</span>";
		}
		else $out .= "<li>";

		$out .= "<a href='$item->url'>$item->title</a> </li>";
	}

	if($out) $out = "<ul class='nav'>$out</ul>\n";

	return $out;
}




/**
 * Given a group of pages, render a <ul> navigation tree
 *
 * This is here to demonstrate an example of a more intermediate level
 * shared function and usage is completely optional. This is very similar to
 * the renderNav() function above except that it can output more than one
 * level of navigation (recursively) and can include other fields in the output.
 *
 * @param array|PageArray $items
 * @param int $maxDepth How many levels of navigation below current should it go?
 * @param string $fieldNames Any extra field names to display (separate multiple fields with a space)
 * @param string $class CSS class name for containing <ul>
 * @return string
 *
 */
function renderNavTree($items, $maxDepth = 0, $fieldNames = '', $class = 'nav') {

	// if we were given a single Page rather than a group of them, we'll pretend they
	// gave us a group of them (a group/array of 1)
	if($items instanceof Page) $items = array($items);

	// $out is where we store the markup we are creating in this function
	$out = '';

	// cycle through all the items
	foreach($items as $item) {

		// markup for the list item...
		// if current item is the same as the page being viewed, add a "current" class to it
		$out .= $item->id == wire('page')->id ? "<li class='current'>" : "<li>";

		// markup for the link
		$out .= "<a href='$item->url'>$item->title</a>";

		// if there are extra field names specified, render markup for each one in a <div>
		// having a class name the same as the field name
		if($fieldNames) foreach(explode(' ', $fieldNames) as $fieldName) {
			$value = $item->get($fieldName);
			if($value) $out .= " <div class='$fieldName'>$value</div>";
		}

		// if the item has children and we're allowed to output tree navigation (maxDepth)
		// then call this same function again for the item's children
		if($item->hasChildren() && $maxDepth) {
			if($class == 'nav') $class = 'nav nav-tree';
			$out .= renderNavTree($item->children, $maxDepth-1, $fieldNames, $class);
		}

		// close the list item
		$out .= "</li>";
	}

	// if output was generated above, wrap it in a <ul>
	if($out) $out = "<ul class='$class'>$out</ul>\n";

	// return the markup we generated above
	return $out;
}
