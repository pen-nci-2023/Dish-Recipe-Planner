// Reference:  https://dev.to/ndrean/dynamic-nested-form-in-rails-4k9p#:~:text=URL%3A%20https%3A%2F%2Fdev.to%2Fndrean%2Fdynamic
// Reference:  https://devcamp.com/trails/professional-rails-development-course/campsites/12/guides/implementing-dynamic-forms-in-rails

//| The remove_field -- is a function hides a section of a form (a "nested field"). It first sets the value of a hidden input field preceding the clicked link to "1", which is typically used to mark the field for deletion when the form is submitted. Then, it hides the closest parent element with the class .nested-fields.
//|

function remove_fields(link) {
    $(link).previous("input[type=hidden]").value = "1";
    $(link).closest(".nested-fields").hide();
  }
  
  //|--------
  //| This function dynamically adds new fields to a form. It generates a unique ID based on the current time, creates a regular expression to find placeholders in the content string that should be replaced with the new ID, and then inserts the modified content before the element that triggered the event (the clicked link). 
  //|
  function add_fields(link, association, content) {
    var new_id = new Date().getTime();
    var regexp = new RegExp("new_" + association, "g");
    $(link).up().insert({
      before: content.replace(regexp, new_id)
    });
  }
  
  $(document).on('click', '.remove_fields', function(e) {
    e.preventDefault();
    remove_fields(this);
  });
  
  $(document).on('click', '.add_fields', function(e) {
    e.preventDefault();
    add_fields(this, $(this).data('association'), $(this).data('content'));
  });