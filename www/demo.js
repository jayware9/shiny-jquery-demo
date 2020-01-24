$(document).ready(function(){
  
  $('#my_text').hide();
  
  $('#my_button').click(function(x){
    $('#my_text').toggle();
  });
  
  $('.my_links').click(function(x){
    Shiny.onInputChange('input_id',123);
    $('#my_text').addClass("redText");
  });
  
});