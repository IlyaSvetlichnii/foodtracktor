class AddReferencesToBasketItem < ActiveRecord::Migration
  def change
    add_reference :basket_items, :basket, index: true, foreign_key: true
    add_reference :basket_items, :product, index: true, foreign_key: true
  end
end
