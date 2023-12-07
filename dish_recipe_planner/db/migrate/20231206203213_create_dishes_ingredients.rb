class CreateDishesIngredients < ActiveRecord::Migration[7.0]
  def change

    create_table :dishes_ingredients do |t|
      t.references :dish, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true
      t.string :unit_name
      t.integer :unit_value

      t.timestamps

    end
  end
end
