class SalePostSerializer < ActiveModel::Serializer
  attributes :id, :name, :picture_url, :comments, :price
  belongs_to :user
  has_many :post_categories
  has_many :sale_categories, through: :post_categories
  has_many :comments

  def include_tags?
    object.association(:sale_categories).loaded?
  end
end
