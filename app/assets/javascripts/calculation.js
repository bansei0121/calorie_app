$(function() {
  
  $('input').change(function() {
      
      $('input:checked').each(function() {
          var r = r + $(this).val();
          
          alert(r);
      });
      
  });  
    
});
