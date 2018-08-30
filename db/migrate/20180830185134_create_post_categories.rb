class CreatePostCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :post_categories do |t|
      t.references :sale_post
      t.references :sale_category
      t.timestamps
    end
  end
end
