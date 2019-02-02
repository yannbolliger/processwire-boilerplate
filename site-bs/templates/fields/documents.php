<?php namespace ProcessWire;

?>

<?php if ($value->count > 0) : ?>

	<div class='files'>
		<h4><?= $field->label ?></h4>
		<ul>
			<?php
			foreach($value as $file) {
				$desc = $file->description;
			  $text = ($desc != "") ? $desc : $file->name;

			  echo "<li> <a href='{$file->url}'>$text</a> </li>";
			}
			?>
		</ul>
	</div>

<?php endif; ?>
