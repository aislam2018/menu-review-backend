class User < ApplicationRecord
  has_many :comments
  has_many :items, through: :comments
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
end
