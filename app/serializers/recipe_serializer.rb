class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image, :instructions 
  has_many :recipeingredients
  has_many :ingredients, through: :recipeingredients 
  
end
