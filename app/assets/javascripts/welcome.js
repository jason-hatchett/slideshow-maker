

$(window).scroll(function() {
  console.log("Nando!");
  if (window.scrollY >= 406) {
    $(".parallex1").css("right", "1000px");
    $(".parallex2").css("right", "825px");
    $(".parallex3").css("right", "650px");
    $(".parallex4").css("right", "475px");
    $(".parallex5").css("right", "300px");
    }
});
