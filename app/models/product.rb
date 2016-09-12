class Product < ActiveRecord::Base
	has_attached_file :image
	belongs_to :restaurant
	belongs_to :category
	has_many :baskets, dependent: :destroy
end
