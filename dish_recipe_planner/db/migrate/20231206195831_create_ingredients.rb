# PATH: db\migrate\20231206195831_create_ingredients.rb

class CreateIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients, primary_key: 'ingredient_id' do |t|
      t.string :name
      t.string :unit_name
      t.integer :unit_value

      t.timestamps
    end
  end
end