<?php namespace ProcessWire;

if ($input->requestMethod() != "POST" || !$config->ajax) {
  throw new Wire404Exception();
}

// get & sanitize user input
$name    = $input->post->text("name");
$email   = $input->post->email("email");
$message = $sanitizer->textarea($input->post->entities("message"));

$honeypot = $input->post("surname");
$honeypotValid = isset($honeypot) && empty($honeypot);

// Validation returns blank if failed
if (!$honeypotValid || empty($name) || empty($message) || empty($email)) {
  throw new Wire404Exception();
}

$recipient = $page->email;
$siteName = $config->httpHost;

$subject = "Kontaktformular von $name";

$emailContent =  "Per Kontaktformular wurde eine neue Nachricht auf $siteName geschickt.\n";
$emailContent .= "Name: $name\n";
$emailContent .= "Email: $email\n\n";
$emailContent .= "Nachricht:\n$message\n";

$emailHeaders = "From: $name <$email>";

// Send the email.
if (mail($recipient, $subject, $emailContent, $emailHeaders)) {
  $disableMain = true;
}
else {
  throw new WireException();
}
