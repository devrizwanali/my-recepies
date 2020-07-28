class Chef < ApplicationRecord 
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true
  has_many :recipes, dependent: :destroy
  has_many :comments, dependent: :destroy
end