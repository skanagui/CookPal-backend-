Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'recipeingredients/show'
      get 'recipeingredients/index'
    end
  end
  namespace :api do
    namespace :v1 do
      get 'ingredients/show'
      get 'ingredients/index'
    end
  end
  namespace :api do
    namespace :v1 do
      get 'recipes/show'
      get 'recipes/index'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html




end
