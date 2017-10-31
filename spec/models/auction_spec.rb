require 'rails_helper'

RSpec.describe Auction, type: :model do 
 let(:product) {build(:product)}
 let(:auction) {build(:auction)}
it "should validate presence of product" do
    product.name= ''
    expect(auction).to be_invalid
  end
  it "should validate presence of title" do
    auction.title= ''
    expect(auction).to be_invalid
  end
   it "should have a valid factory" do
    expect(auction).to be_invalid #need add image
  end
   
end   