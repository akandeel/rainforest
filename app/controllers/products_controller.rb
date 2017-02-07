class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @products = Product.find(params[:id])
  end

  def new
    @products = Product.new
  end

  def edit
    @products = Product.find(params[:id])
  end

  def created
  @products = Product.new

  if @products = Product.save
    redirect_to products_url

  else
    render :new
  end


private
  def product_params
    params.require(:product).permit(:name, :description, :price_in_cents)
  end
end
