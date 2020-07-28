class Recipe < ApplicationRecord 
  validates :name, presence: true
  validates :description, presence: true
  belongs_to :chef
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  has_many :comments, dependent: :destroy
end