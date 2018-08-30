class SalePostSerializer < ActiveModel::Serializer
  attributes :id, :name, :picture_url, :location
  belongs_to :user
  has_many :post_categories, embed: :objects
  has_many :sale_categories, through: :post_categories

  def include_tags?
    object.association(:sale_categories).loaded?
  end
end
