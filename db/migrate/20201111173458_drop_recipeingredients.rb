class DropRecipeingredients < ActiveRecord::Migration[6.0]
  def change
    drop_table :recipeingredients
  end
end
