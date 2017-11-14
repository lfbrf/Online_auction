class Admins::AuctionsController < Admins::BaseControlller
  before_action :admin_only
  

  def index
    @auctions = Auction.all
  end 

  def new
    @auction = Auction.new
  end

  def show
    @auction = Auction.find(params[:id])
    @products = Product.all
  end

  def edit
    @auction = Auction.find(params[:id])
  end

  def update
    @auction = Auction.find(params[:id])
    if @auction.update_attributes(auction_params)
       flash[:success] = "Leilao Atualizado"
      redirect_to @auction
    else
      render 'edit'
    end
  end

  def create
    @auction = Auction.new(auction_params)

    if @auction.save
      redirect_to @auction
    else
      render :new
    end
  end
def destroy
    auction = Auction.find(params[:id])
    auction.destroy
    redirect_to auction, :notice => "Leilao deletado."
  end
  private

  def auction_params
    params.require(:auction).permit(:end_date, :begin_date, :image, :title, {product_ids: []} )
  end

  def admin_only
    unless current_user && current_user.admin?
      redirect_to root_path, :alert => "Acesso Negado."
    end
  end
end

