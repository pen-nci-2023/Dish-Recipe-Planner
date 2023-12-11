// JavaScript code to add ingredient fields
$('#add-ingredient').click(function() {
    var newIngredientField = $('<div class="nested-fields">' +
      '<label for="dish_ingredients_attributes_name">Name</label>' +
      '<input type="text" name="dish[ingredients_attributes][][name]" />' +
      '<input type="hidden" name="dish[ingredients_attributes][][_destroy]" value="false" />' +
      '<a href="#" class="remove-ingredient">Remove</a>' +
      '</div>');
  
    $('#ingredients').append(newIngredientField);
  });