
$(function () {

  /**
  * Controls burger menu
  */

  /*
  $("#menu #burger").click(function() {
    $(".topnav").toggleClass("hidden");
  });
  */



  /**
  * Scrolls to contact form on click in menu
  */

  /*
  $("#menu a[href*=contact]").click(function(e) {
    e.preventDefault();
    $('html, body').animate({ scrollTop: $("#contact").offset().top }, 1000);
  });
  */

  /**
  *  Colorbox
  */

  /*
  $('a.colorbox').colorbox({
    rel:'foto',
    transition: 'fade',
    fixed: true,
    opacity: '0.85',
    maxWidth: '100%',
    maxHeight: '100%',
    initialWidth: '300',
    initialHeight: '100',
    overlayClose: true,
    scrolling: true,
    speed: '500',
    current: 'Bild {current} von {total}',
    previous: '&#10094;',
    next: '&#10095;',
    close: '&times;',
    xhrError: 'Dieser Inhalt konnte nicht geladen werden.',
    imgError: 'Dieses Bild konnte nicht geladen werden.',
    title: function() { return $(this).children('img').attr('alt'); },
    returnFocus: false
  });
  */


  /**
  * Handles mailing and animation
  *
  */

  /*
  // submit function
  $("#contact form").submit(function(e){
    e.preventDefault();
    var $form = $(this);
    var $responseContainer = $("#response");

    $responseContainer.addClass("hidden");

    if ($form.children().eq(0).val() == ""
        || $form.children().eq(2).val() == ""
        || $form.children().eq(3).val() == "") {

      $responseContainer.html("&rarr; Füllen Sie alle Felder aus.");
      $responseContainer.removeClass("hidden");
      return;
    }

    $form.addClass("hidden");

    $.ajax({
      type: "POST",
      url: $(this).attr("action"),
      data: $(this).serialize()
    })
    .done(function(response) {
      $responseContainer.html("&rarr; Die Nachricht wurde erfolgreich gesendet.");
      $responseContainer.removeClass("hidden");
    })
    .fail(function(response) {
      $responseContainer.html("&rarr; Es ist ein Fehler aufgetreten.");
      $responseContainer.removeClass("hidden");
      $form.removeClass("hidden");
    });
  });

  // Remove error/notification messages on reset
  $("#contact form input[type='reset']").click(function(e) {
    $("#response").addClass("hidden");
  });
  */

});
