class Item < ApplicationRecord
  belongs_to :restaurant
  belongs_to :category
  has_many :comments
  has_many :users, through: :comments
end
