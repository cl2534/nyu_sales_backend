class CreateSaleCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :sale_categories do |t|
      t.text :name
      t.text :picture_url
      t.timestamps
    end
  end
end
