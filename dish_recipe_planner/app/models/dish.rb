class Dish < ApplicationRecord
    has_many :dishes_ingredients
    accepts_nested_attributes_for :ingredients, allow_destroy: true
end
