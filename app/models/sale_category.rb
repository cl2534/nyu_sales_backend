class SaleCategory < ApplicationRecord
  has_many :post_categories
  has_many :sale_categories, through: :post_categories
end
