require 'rails_helper'

RSpec.describe User, type: :model do 

  let(:user) {build(:user)}

  it "should validate presence of first name" do
    user.first_name= ''
    expect(user).to be_invalid
  end

  it "should have a valid factory" do
    expect(user).to be_valid
  end

  it "should have first_name, last_name and city capitalize" do
    user.first_name='nome'
    user.last_name='sobrenome'
    user.city="guarapuava"

    expect(user).to be_invalid
    expect(user.errors.size).to eq(3)
  end

  it "should be by default a user" do
    expect(user.role).to eq("user")
  end

  it "should be possible change a user to admin" do
    user = create(:user)
    user.role= :admin
    user.save

    expect(user.reload.role).to eq("admin")
  end
 
  it "should validate role be admin or user" do
    user = create(:user)
    expect{ user.role=:vip }.to raise_error(ArgumentError)
  end

  #it { expect(user).to ensure_inclusion_of(:role).in_array(['user', 'admin']) }
end
