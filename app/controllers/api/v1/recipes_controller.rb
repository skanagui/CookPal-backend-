class Api::V1::RecipesController < ApplicationController
  def show
    recipe = Recipe.find(params[:id])
    render json: recipe 
  end

  def index
    recipes= Recipe.all
    render json: recipes
  end
  

  def create
    recipe = Recipe.create!(recipe_params)
    render json: recipe 
  end 

  def new
    recipe = Recipe.new 
  end 

  private 
  def recipe_params
    params.require(:recipe).permit(:name, :description, :image, :instructions)
  end 


end
