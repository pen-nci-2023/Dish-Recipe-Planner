// PATH:  app\assets\javascripts\ingredient_fields.js

const ingredientsContainer = document.getElementById('ingredients');

const addIngredientLink = document.getElementById('add-ingredient');

addIngredientLink.addEventListener('click', () => {
  const newIngredientField = document.createElement('div');
  newIngredientField.classList.add('nested-fields');

  const ingredientNameInput = document.createElement('input');
  ingredientNameInput.type = 'text';
  ingredientNameInput.placeholder = 'Enter ingredient name';

  const removeIngredientLink = document.createElement('a');
  removeIngredientLink.textContent = 'Remove Ingredient';
  removeIngredientLink.addEventListener('click', () => {
    newIngredientField.remove();
  });

  newIngredientField.appendChild(ingredientNameInput);
  newIngredientField.appendChild(removeIngredientLink);
  ingredientsContainer.appendChild(newIngredientField);
});
