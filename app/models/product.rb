class Product < ApplicationRecord

  has_many :auction_products
  has_many :auctions, :through => :auction_products
end
