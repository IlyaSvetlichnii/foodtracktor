class Category < ActiveRecord::Base
    belongs_to :restaurant
	has_many :products
end
