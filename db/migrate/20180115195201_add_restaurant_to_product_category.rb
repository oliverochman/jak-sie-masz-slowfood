class AddRestaurantToProductCategory < ActiveRecord::Migration[5.1]
  def change
    add_reference :product_categories, :restaurant, foreign_key: true
  end
end
