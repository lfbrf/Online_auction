class Users::AuctionsController < Users::BaseControlller
    before_action :user_only
  def index
    @auctions = Auction.all
  end 

  def show
    @auction = Auction.find(params[:id])
    @products = Product.all
  end

  private

  def user_only
    unless current_user && !current_user.admin?
      redirect_to root_path, :alert => "Acesso Negado."
    end
  end
end
 
