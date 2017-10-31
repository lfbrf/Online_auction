class VisitorsController < ApplicationController
	def index
		@auctions = Auction.all
	end
end
