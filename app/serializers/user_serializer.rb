class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :location
  has_many :sale_posts
  has_many :comments, through: :sale_posts
end
