class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image, :instructions, :comment
  has_many :ingredients
  
end
