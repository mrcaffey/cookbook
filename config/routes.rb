Rails.application.routes.draw do
  namespace :api do
    resource :ingredients
    resource :recipes
    resource :recipe_ingredients, only: [:create, :destroy, :new]
  end

  #Do not place any routes below this one
  if Rails.env.production?
    get '*other', to: 'static#index'
  end
end
