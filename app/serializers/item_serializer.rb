class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :description, :price, :likes, :dislikes
  belongs_to :restaurant
  belongs_to :category
  has_many :comments
  has_many :users, through: :comments
end
