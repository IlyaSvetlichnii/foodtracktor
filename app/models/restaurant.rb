class Restaurant < ActiveRecord::Base
	has_attached_file :image
	has_many :products
	has_many :categories
end
