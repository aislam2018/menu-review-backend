class User < ApplicationRecord
  has_many :comments
  has_many :items, through: :comments
end
