class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment, :sale_post
  belongs_to :sale_post
  belongs_to :user
end
