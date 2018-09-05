class SaleCategorySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :post_categories
  has_many :sale_posts, through: :post_categories

  def include_tags?
    object.association(:sale_posts).loaded?
  end
end
