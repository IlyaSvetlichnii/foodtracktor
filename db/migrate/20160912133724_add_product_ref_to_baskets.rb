class AddProductRefToBaskets < ActiveRecord::Migration
  def change
    add_reference :baskets, :product, index: true, foreign_key: true
  end
end
