class CreateBaskets < ActiveRecord::Migration
  def change
    create_table :baskets do |t|
      t.string :number
      t.decimal :count

      t.timestamps null: false
    end
  end
end
