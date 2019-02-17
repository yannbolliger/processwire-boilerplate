<?php namespace ProcessWire;

/**
 * _main.php
 * Main markup file (multi-language)
 */

 if ($disableMain) return;
?>

<!DOCTYPE html>
<html lang="<?php echo _x('en', 'HTML language code'); ?>">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1, maximum-scale=1">
	<meta http-equiv="x-ua-compatible" content="ie=edge" />

	<title><?php echo $title; ?></title>
	<meta name="description" content="<?php echo $page->summary; ?>" />
	<meta name="keywords" content="" />

	<link rel="stylesheet" type="text/css" href="<?= versionedAssetUrl('styles/style.css') ?>" />

	<?php
	// handle output of 'hreflang' link tags for multi-language
	// this is good to do for SEO in helping search engines understand
	// what languages your site is presented in

	foreach($languages as $language) {
		if (!$page->viewable($language)) continue;

		$url = $page->localHttpUrl($language);

		// hreflang code for language uses language name from homepage
		$hreflang = $homepage->getLanguageValue($language, 'name');

		// NOTE: that this assumes your language names are the same as required by hreflang.
		echo "\n\t<link rel='alternate' hreflang='$hreflang' href='$url' />";
	}
	?>

</head>
<body>

	<?php // language switcher ?>
	<ul class='languages' role='navigation'>
		<?php
			foreach($languages as $language) {
				if (!$page->viewable($language)) continue;

				if ($language->id == $user->language->id) echo "<li class='current'>";
				else echo "<li>";

				$url = $page->localUrl($language);
				$hreflang = $homepage->getLanguageValue($language, 'name');
				echo "<a hreflang='$hreflang' href='$url'>$language->title</a></li>";
			}
		?>
	</ul>

	<? // top navigation ?>
	<?= renderNav($homepage->and($homepage->children)) ?>

	<div class='breadcrumbs' role='navigation' aria-label='<?php echo _x('You are here:', 'breadcrumbs'); ?>'>
		<?php
			foreach($page->parents() as $item) {
				echo "<span><a href='$item->url'>$item->title</a></span> ";
			}
			// optionally output the current page as the last item
			echo "<span>$page->title</span> ";
		?>
	</div>

	<?php //search engine ?>
	<form class='search' action='<?php echo $pages->get('template=search')->url; ?>' method='get'>
		<label for='search' class='visually-hidden'><?php echo _x('Search:', 'label'); ?></label>
		<input type='text' name='q' id='search' placeh older='<?php echo _x('Search', 'placeholder'); ?>' />
		<button type='submit' name='submit' class='visually-hidden'><?php echo _x('Search', 'button'); ?></button>
	</form>


	<main>

		<div id='content'>
			<h1><?php echo $title; ?></h1>
			<?php echo $content; ?>
		</div>


		<?php if($sidebar): ?>
		<aside id='sidebar'>
			<?php echo $sidebar; ?>
		</aside>
		<?php endif; ?>

	</main>


	<footer id="footer">
    <?php require '_contact_form.php'; ?>
	</footer>

	<script
		src="https://code.jquery.com/jquery-3.2.1.min.js"
		integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
		crossorigin="anonymous">
	</script>
	<? /* <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.colorbox/1.6.4/jquery.colorbox-min.js"></script>
	<script type="text/javascript" src="<?= versionedAssetUrl('scripts/main.js') ?>" ></script> */ ?>

</body>
</html>
