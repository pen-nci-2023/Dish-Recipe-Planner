# app/controllers/dishes_controller.rb

class DishesController < ApplicationController
  def new
    @dish = Dish.new
    @dish.ingredients.build
  end

  def create
    @dish = Dish.new(dish_params)
    if @dish.save
      # Redirect or handle success
    else
      render :new
    end
  end

  private

  def dish_params
    params.require(:dish).permit(:name, ingredients_attributes: [:name])
  end
end