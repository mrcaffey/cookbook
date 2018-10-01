class Ingredient < ApplicationRecord
  #Salt salt SAlt SaLt
  validates_uniqueness_of :name, case_sensitive: false

  has_many :recipe_ingredients, dependent: :destroy
  has_many :recipe, through: :recipe_ingredients
end
