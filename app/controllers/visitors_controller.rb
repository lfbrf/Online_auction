class VisitorsController < ApplicationController
	def index
		@auctions = Auction.all
		@products = Product.all
	end
def show
    @auction = Auction.find(params[:id])
    @products = Product.all
  end
  def showproducts
    @auction = Auction.find(params[:id])
    @product = Product.find(params[:id]) 
  end
end
