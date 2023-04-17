class DishIngredientsController < ApplicationController
  def create
    DishIngredient.create!(dish_ingredient_params)
    redirect_to dish_path(params[:dish_id])

  end

 private 
  def dish_ingredient_params
    params.permit(:dish_id, :ingredient_id)
  end
end