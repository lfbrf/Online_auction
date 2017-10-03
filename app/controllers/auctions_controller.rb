
class AuctionsController < ApplicationController 
  before_action :admin_only, :except => :create
  def index

    @users = User.all
  end

   def new

     @auction = Auction.new
      
   end
   
  def find
    @auction = Auction.new
  end
  def show
      render json: @auction = Auction.find(params[:id])
    end
    def create 

    @auction = Auction.new(auction_params)
   
     @auction.save 
    redirect_to  auctions_path, :alert => "Persistido com sucesso"
        if @auction.save
          return root_url
        else
           render :invite_tutor_form
    return
        end
  end
 

   private
       def auction_params
         params.require(:auction).permit(:product_name, :number, :price, :end_time, :description, :status, :image)
       end
  def admin_only
    unless current_user.admin?
      redirect_to root_path, :alert => "Acesso Negado."
    end
  end
end 

   