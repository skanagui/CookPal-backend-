class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :quantity 
  has_many :recipeingredients
  has_many :recipes, through: :recipeingredients 
end
