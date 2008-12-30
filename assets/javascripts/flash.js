// Copy the snippet that applies to you, and paste it in application.js





// jQuery -------------------------------------------------------------

$(document).ready(function() {
  setTimeout(hideFlashes, 25000);
});

var hideFlashes = function() {
  $('p.notice, p.warning, p.error').fadeOut(1500);
}
// --------------------------------------------------------------------





// Prototype JS -------------------------------------------------------

document.observe('dom:loaded', function() {
  setTimeout(hideFlashes, 25000);
});

var hideFlashes = function() {
  $$('.notice', '.warning', '.error').each(function(e) {
    if (e) Effect.Fade(e, { duration: 1.5 });
  })
}
// --------------------------------------------------------------------