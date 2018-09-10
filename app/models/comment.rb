class Comment < ApplicationRecord
  belongs_to :sale_post, foreign_key: :sale_post_id
end
