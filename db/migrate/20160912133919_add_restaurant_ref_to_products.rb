class AddRestaurantRefToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :restaurant, index: true, foreign_key: true
  end
end
