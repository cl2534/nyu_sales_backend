class PostCategory < ApplicationRecord
  belongs_to :sale_post, foreign_key: :sale_post_id
  belongs_to :sale_category, foreign_key: :sale_category_id
end
