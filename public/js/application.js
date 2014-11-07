$(document).ready(function() {

// Show and hide sign in
  $("#signin").hide();
  $("#signup").hide();

  $("#signin_button").on("click", function(){
  	  $("#signin").show();
  	   $("#signup").hide();
  });

    $("#signup_button").on("click", function(){
  	   $("#signup").show();
  	  $("#signin").hide();
  });

  // AJAX
  $('#question').on('submit', function(e){
     e.preventDefault()
     var surveyId = $(this).parent().attr("id")
     form_data=$(this).serialize()
     $.ajax({
      type: "post",
       url: "/survey/" + surveyId + "/question/new",
      data: form_data
      })
      .done(function(server_data){
        var temp = makeTemplate(server_data)
        $('#display').append(temp)
      document.getElementById('display').reset()
      })
      .fail(function(server_data){
        console.log("fail")
      })

  });

  function makeTemplate(data){
  var template= $('<h1>')
  template.html("Please work: "+ data.question.question )
  return template
}


});
