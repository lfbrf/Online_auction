require 'rails_helper'

RSpec.describe Product, type: :model do 
 let(:product) {build(:product)}
it "should validate presence of name" do
    product.name= ''
    expect(product).to be_invalid
  end
  it "should validate presence of price" do
    product.price= ''
    expect(product).to be_invalid
  end
 it "should have a valid factory" do
    expect(product).to be_valid
  end

   it "should have price numeric" do
    product.price='produto' 
    expect(product).to be_invalid
    expect(product.errors.size).to eq(1)
  end
  it "should have price less than 10000" do
    product.price='10001' 
    expect(product).to be_invalid
    expect(product.errors.size).to eq(1)
  end
end