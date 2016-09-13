class AddUserReferencesToBasket < ActiveRecord::Migration
  def change
    add_reference :baskets, :user, index: true, foreign_key: true
  end
end
