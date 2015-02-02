$(document).ready(function(){
  $('.dropdown-toggle').click(function(){
    event.preventDefault();
    $('.dropdown-menu').toggle();
  });
});
