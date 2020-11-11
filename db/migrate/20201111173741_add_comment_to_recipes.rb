class AddCommentToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :comment, :string
  end
end
