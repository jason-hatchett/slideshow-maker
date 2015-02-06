
$(window).bind("scroll", function() {
  if (window.scrollY > 60) {
        $(".cloud").fadeOut(1500);
        $(".purposetext3").fadeOut(1500);
        $("#searchbutton").fadeOut(1500);
        $("#createbutton").fadeOut(1500);
      }
  else {
    $(".cloud").fadeIn(2000);
    $(".purposetext3").fadeIn(2000);
    $("#searchbutton").fadeIn(2000);
    $("#createbutton").fadeIn(2000);
  }

});
