class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :location
  has_many :sale_posts
end
