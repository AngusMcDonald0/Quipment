//ON SCROLL SHOW MENU BAR
if (window.matchMedia("(max-width: 700px)").matches === false) {
  window.onscroll = function() {scrollFunction()};
  function scrollFunction() {
  if (document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) {
  document.getElementsByTagName("nav")[0].className = "full_nav";
  } else {
  document.getElementsByTagName("nav")[0].className = "";
  }
  }

  //Detect menu button click
  function nav() {
      document.getElementsByTagName("nav")[0].className = "";
  }
  }
