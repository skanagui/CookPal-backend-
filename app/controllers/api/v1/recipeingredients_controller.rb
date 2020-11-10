class Api::V1::RecipeingredientsController < ApplicationController
  def show
    recipeingredient = Recipeingredient.find(params[:id])
    render json: recipeingredient    
  end

  def index
    recipeingredients= Recipeingredients.all
    render json: recipeingredients
  end
end
