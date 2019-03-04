class UserSerializer < ActiveModel::Serializer
  attributes :username
  has_many :comments
  has_many :items, through: :comments
end
