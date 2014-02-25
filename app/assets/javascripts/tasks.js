$(document).ready(function() {
  $('.edit_task').submitOnCheck();
});

jQuery.fn.submitOnCheck = function() {
  this.find('input[type=submit]').remove();  // remove 'update' button
  this.find('input[type=checkbox]').click(function() {
    $(this).parent('form').submit();
  });
  return this;  // return the element so we can chain functions
};
