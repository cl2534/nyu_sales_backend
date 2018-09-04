class SalePost < ApplicationRecord
  belongs_to :user
  has_many :post_categories
  has_many :sale_categories, through: :post_categories

end
