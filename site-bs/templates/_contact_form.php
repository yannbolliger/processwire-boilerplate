<?php namespace ProcessWire;

$formUrl = $pages->get('template=mailer', ["include" => "hidden"])->url;

?>


<div id="contact">
  <h4>Kontakt</h4>

  <div id="response" class="hidden"></div>

  <form method="post" action="<?= $formUrl ?>">
    <input name="name" value="" maxlength="2048" placeholder="Name" type="text">
    <input name="surname" value="" maxlength="2048" placeholder="Surname" type="text">
    <input name="email" value="" maxlength="2048" placeholder="E-Mail" type="email">
    <textarea name="message" value="" maxlength="4096" placeholder="Nachricht"></textarea>

    <input class="button" type="submit" />
    <input class="button" type="reset" />
  </form>
</div>
