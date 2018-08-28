class CreateSalePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :sale_posts do |t|
      t.text :name
      t.text :picture_url
      t.text :location
      t.references :user
      t.references :sale_category
      t.timestamps
    end
  end
end
