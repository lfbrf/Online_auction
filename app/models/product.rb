class Product < ApplicationRecord
	NUMBER_REGEX = /\A^[0-9]*$\Z/
  has_many :auction_products
  has_many :auctions, :through => :auction_products
   mount_uploaders :images, ImageUploader
validates :name, :price, :images, presence: true
  validates_numericality_of :price, :greater_than => 0, :less_than => 10000

end
     
