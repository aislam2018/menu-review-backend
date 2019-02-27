class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :created_at
  belongs_to :item
  belongs_to :user
end