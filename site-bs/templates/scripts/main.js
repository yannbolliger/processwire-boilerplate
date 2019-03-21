$(function() {
  /**
   * Controls burger menu
   */
  /*
  $("#menu #burger").click(function() {
    $(".topnav").toggleClass("hidden")
  })
  */
  /**
   * Scrolls to contact form on click in menu
   */
  /*
  $("#menu a[href*=contact]").click(function(e) {
    e.preventDefault()
    $("html, body").animate({scrollTop: $("#contact").offset().top}, 1000)
  })
  */
  /**
   *  Colorbox
   */
  /*
  $("a.colorbox").colorbox({
    rel: "foto",
    transition: "fade",
    fixed: true,
    opacity: "0.85",
    maxWidth: "100%",
    maxHeight: "100%",
    initialWidth: "300",
    initialHeight: "100",
    overlayClose: true,
    scrolling: true,
    speed: "500",
    current: "Bild {current} von {total}",
    previous: "&#10094;",
    next: "&#10095;",
    close: "&times;",
    xhrError: "Dieser Inhalt konnte nicht geladen werden.",
    imgError: "Dieses Bild konnte nicht geladen werden.",
    title: function() {
      return $(this)
        .children("img")
        .attr("alt")
    },
    returnFocus: false
  })
  */
  /**
   * Handles mailing and animation
   *
   */
  /*
  $("#contact form").submit(function(e) {
    e.preventDefault()
    const $form = $(this)
    const $responseContainer = $("#response")

    $responseContainer.addClass("hidden")

    const $name = $form.children().eq(0)
    const $email = $form.children().eq(1)
    const $message = $form.children().eq(2)

    if ($name.val() === "" || $email.val() === "" || $message.val() === "") {
      $responseContainer.html("Füllen Sie alle Felder aus.")
      $responseContainer.removeClass("hidden")
      return
    }

    $form.addClass("hidden")

    $.ajax({
      type: "POST",
      url: $form.attr("action"),
      data: $form.serialize()
    })
      .then(function() {
        $responseContainer.html("Die Nachricht wurde erfolgreich gesendet.")
      })
      .catch(function() {
        $responseContainer.html("Es ist ein Fehler aufgetreten.")
        $form.removeClass("hidden")
      })
      .always(function() {
        $responseContainer.removeClass("hidden")
      })
  })

  $formContainer.find("input[type='reset']").click(function() {
    $responseContainer.addClass("hidden")
  })
  */
})
