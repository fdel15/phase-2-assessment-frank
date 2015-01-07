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

// ***********************
// tests/single
// ***********************

// Edit form

  $('.question').on('click', 'button.edit_answer', function(event) {

    event.preventDefault();
    var $target = $(event.target)
    console.log('click')
    $target.closest('.question').children('.edit_wrapper').toggle();

  });
  $('.question').on('submit', 'form.edit_answer_form', function (event) {

    event.preventDefault();

    var $target = $(event.target);

    $.ajax({
      url: $target.attr('action'),
      type: 'PUT',
      data: $target.serialize(),
    }).done(function (response) {
      $target.closest('.question').children('.edit_wrapper').toggle();
    }).fail(function (response) {
      console.log("FAIL!")
    })

  })

});