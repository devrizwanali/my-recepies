class Comment < ApplicationRecord
  validates :description, presence: true, length: {minimum: 3 , maximum: 100}
  belongs_to :recipe
  belongs_to :chef
end