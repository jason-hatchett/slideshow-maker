

$(window).scroll(function() {
  console.log("Nando!");
  if (window.scrollY >= 406) {
    $(".parallex1").css("right", "600px");
    $(".parallex2").css("right", "450px");
    $(".parallex3").css("right", "300px");
    $(".parallex4").css("right", "150px");
    $(".parallex5").css("right", "20px");
    }
});


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
