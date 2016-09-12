class AddRestaurantRefToCategories < ActiveRecord::Migration
  def change
    add_reference :categories, :restaurant, index: true, foreign_key: true
  end
end
