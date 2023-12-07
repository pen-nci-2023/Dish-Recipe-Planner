class CreateIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :unit_name
      t.integer :unit_value

      t.timestamps
    end
  end
end
