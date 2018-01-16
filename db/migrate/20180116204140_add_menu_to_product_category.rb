class AddMenuToProductCategory < ActiveRecord::Migration[5.1]
  def change
    add_reference :product_categories, :menu, foreign_key: true
  end
end
