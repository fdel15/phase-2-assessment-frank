$(document).ready(function() {

  // ***********************
// auth/login
// ***********************
  $('#login_wrapper button').mouseenter(function() {
    $(this).css('background', 'blue')
  });

  $('#login_wrapper button').mouseleave(function() {
    $(this).css('background', 'black')
  });


   $('#login_button').on('click', function (event) {

  event.preventDefault();

  var $target = $(event.target);

  $.ajax({
    url: '/login',
    type: 'GET',
  }).done(function (response) {
    $target.closest('button').replaceWith(response);
  })

});

  $('#signup_button').on('click', function (event) {

  event.preventDefault();

  var $target = $(event.target);

  $.ajax({
    url: '/signup',
    type: 'GET',
  }).done(function (response) {
    $target.closest('button').replaceWith(response);
  })

});

});