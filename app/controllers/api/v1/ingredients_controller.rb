class Api::V1::IngredientsController < ApplicationController
  def show
    ingredient = Ingredient.find(params[:id])
    render json: ingredient
  end

  def index
    ingredients = Ingredient.all
    render json: ingredients
  end
  

  def create
    ingredient = Ingredient.create!(ingredients_params)
    render json: ingredient
  end 

  def new
    ingredient = Ingredient.new 
  end 

  def delete

  end 

  private 
  def ingredients_params
    params.require(:ingredient).permit(:name, :quantity, :unit, :recipe_id)
  end 

  
end
