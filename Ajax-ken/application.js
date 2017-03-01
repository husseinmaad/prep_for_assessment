$(document).ready(function() {
  addPoop();
});

var addPoop = function(){
  $('#the-form').on('submit', function(e){
    e.preventDefault();

    var $form = $(this);
    var url = $form.attr('action');
    var method = $form.attr('method');
    var data = $form.serialize();
    // debugger
    $.ajax({ // BUILDING A REQUEST
      url: url, // Go to this route
      method: method, // with this verb
      data: data // with this data
    })
    .done(function(response){
      $('#toilet').prepend(response);
      $form[0].reset();
    })
    .fail(function(response){
      console.error("Something went wrong. This response was", response)
    })
  });
};
