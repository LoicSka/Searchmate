$(document).ready(function(){
    //$('input[type=submit]').on('click', function(event){

    //var form = $(this).parent('form');
    //event.preventDefault();

    //$.ajax({
    //type: "PUT",
    //url: form.attr('action'),
    //data: form.serialize(),
    //success: function(data){
    // $('#res').append('data.title');
    // console.log("Done yay!")
    // },
    // error: function(data){
    //console.log('there is a prob bob.')
    // },
    // dataType: 'JSON'
    // });
    // });


  $("#search_category_id").chosen({disable_search_threshold: 10});
  $("#hidn").hide();
  $("#spin").hide();
  $('.btn').click(function(){
    $("#spin").show();
    $('#im').fadeout();
  });
});

