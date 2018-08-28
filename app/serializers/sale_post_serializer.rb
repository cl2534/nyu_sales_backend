class SalePostSerializer < ActiveModel::Serializer
  attributes :id, :name, :picture_url, :location
  belongs_to :user
  belongs_to :sale_category
end
