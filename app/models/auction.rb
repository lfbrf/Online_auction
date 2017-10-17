class Auction < ActiveRecord::Base
	mount_uploader :image, ImageUploader
  	has_many :auction_products
  	has_many :products, :through => :auction_products
  has_many :tasks, dependent: :destroy
  accepts_nested_attributes_for :tasks, allow_destroy: true, reject_if: proc { |att| att['name'].blank? }
end
   