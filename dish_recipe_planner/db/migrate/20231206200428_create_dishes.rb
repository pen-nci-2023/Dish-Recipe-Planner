# PATH: db\migrate\20231206200428_create_dishes.rb

class CreateDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes do |t|
      
      t.string :name

      t.timestamps
    end
  end
end
