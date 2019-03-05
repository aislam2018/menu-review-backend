class User < ApplicationRecord
  has_many :comments
  has_many :items, through: :comments
  has_secure_password
  validates_uniqueness_of :username
end
