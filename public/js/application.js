$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them
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
  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});
