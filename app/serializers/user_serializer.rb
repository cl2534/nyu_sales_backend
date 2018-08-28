class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :location
  has_many :sale_posts, embed: :objects
end
