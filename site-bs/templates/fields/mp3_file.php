<?php namespace ProcessWire;

?>

<?php if ($value) : ?>

	<div class='audio'>
		<h4><?= $field->label ?></h4>
		<audio controls>
			<source src='{$value->url}' type='audio/mpeg' />
		</audio>
	</div>

<?php endif; ?>
