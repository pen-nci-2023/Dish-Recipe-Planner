class RecreateIngredientsTable < ActiveRecord::Migration[7.0]
  def change

    # Create a new temporary table with the desired structure
    create_table :new_ingredients, primary_key: :ingredient_id do |t|
      t.string :name
      t.integer :quantity
      # Add other columns as needed
    end


    # Copy data from old table to new table
    execute <<-SQL
      INSERT INTO new_ingredients (ingredient_id, name, quantity)
      SELECT id, name, quantity FROM ingredients;
    SQL

   # Drop the old table
   drop_table :ingredients

   # Rename the new table to the original table name
   rename_table :new_ingredients, :ingredients

  end
end
