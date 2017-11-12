  
class ProductsController < ApplicationController 
  before_action :admin_only
  
  def index
    @products = Product.all
    
  end

  def new
   @product = Product.new
  end

  def show
   @product = Product.find(params[:id]) 
  end 

  def create   
    @product = Product.new(product_params)
    
   if @product.save
      redirect_to @product
   else 
      render :new   
    end
  end
  
private

  def product_params
    params.require(:product).permit(:name, :price, :state, :description,  {images: []})   
  end
  
  def admin_only
    unless current_user.admin?
      redirect_to root_path, :alert => "Acesso Negado."
    end
  end
end 

