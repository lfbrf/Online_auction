class Auction < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  has_many :auction_products
  has_many :products, :through => :auction_products
end
def product_name
  product.try(:name)
end

def product_name=(name)
  self.product = Product.find_by(name: name) if name.present?
end
