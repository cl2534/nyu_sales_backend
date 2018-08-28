class SaleCategorySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :sale_posts, embed: :objects
end
