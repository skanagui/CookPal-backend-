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

  def update
    recipe = Recipe.find(params[:id])
    
    recipe.update!(recipe_params)

    render json:{}
  end 

  def destroy 
    recipe = Recipe.find(params[:id])
    
    recipe.destroy

    render json: {}

  end 

  private 
  def recipe_params
    params.require(:recipe).permit(:name, :description, :image, :instructions, :comment)
  end 


end
