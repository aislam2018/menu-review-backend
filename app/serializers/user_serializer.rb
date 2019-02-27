class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password
  has_many :comments
  has_many :items, through: :comments
end
