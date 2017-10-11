var ready = function() {

  $(".quote-box").addClass('animate-quote');
  // $("#login-form").hide();
  $("#register-form").hide();
  $("#Login").parent().addClass('active-bar');
  var formShow = false;
  $("body").on("click", "#Login", function(event){
    $("#register-form").hide();
    $("#login-form").toggle();
    $("#Register").removeClass('disabled-links').parent().removeClass('active-bar');
    $("#Login").addClass('disabled-links');
    $("#Login").parent().addClass('active-bar')
  })

  $("body").on("click", "#Register", function(event){
    $("#login-form").hide();
    $("#register-form").toggle();
    $("#Login").removeClass('disabled-links').parent().removeClass('active-bar');;
    $("#Register").addClass('disabled-links');
    $("#Register").parent().addClass('active-bar')
  });

  // hideForms()
  // var formShow = false;
  // $("body").on("click", "#Login", loginForm)
  // $("body").on("click", "#Register", regForm)
};

$(document).on('turbolinks:load', ready);


function hideForms() {
  $("#login-form").hide();
  $("#register-form").hide();
}

function loginForm(){
    $("#register-form").hide();
    $("#login-form").toggle();
  }

function regForm(){
    $("#login-form").hide();
    $("#register-form").toggle();
  }
