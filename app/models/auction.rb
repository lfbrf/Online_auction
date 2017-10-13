class Auction < ActiveRecord::Base
	mount_uploader :image, ImageUploader
  	has_many :auction_products
  	has_many :products, :through => :auction_products
  
end
   