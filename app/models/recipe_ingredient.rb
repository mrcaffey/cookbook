class RecipeIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient

  # recipe_id | ingredient_id | amount
  #     1            1            1 tbsp
  #     2            1            1 tsp
end
