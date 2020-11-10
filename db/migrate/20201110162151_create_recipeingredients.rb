class CreateRecipeingredients < ActiveRecord::Migration[6.0]
  def change
    create_table :recipeingredients do |t|
      t.belongs_to :recipe, null: false, foreign_key: true
      t.belongs_to :ingredient, null: false, foreign_key: true
      t.boolean :favorites 

      t.timestamps
    end
  end
end
