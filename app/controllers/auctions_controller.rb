
class AuctionsController < ApplicationController 
  before_action :admin_only
  
  def index
    @auctions = Auction.all
  end

  def new
   @auction = Auction.new
  end

  def show
   @auction = Auction.find(params[:id]) 
  end

  def create 
    @auction = Auction.new(auction_params)
    
   if @auction.save
      redirect_to @auction
   else
      render :new   
    end
  end

private

  def auction_params
    params.require(:auction).permit(:end_date, :begin_date, :image, :title)
   
  end
 
  def admin_only
    unless current_user.admin?
      redirect_to root_path, :alert => "Acesso Negado."
    end
  end
end 

