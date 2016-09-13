class ProductsController < ApplicationController
	 def index
    @products = Product.all 
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
  end

  def add
    @add = current_user.baskets.first.basket_items.create(product_params)
  end

  def create
    @product = Product.new(product_params)
    @product.save

    redirect_to products_path
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.json { head :no_content }
      format.js   {}
    end
  end

  def update
    @product = Product.find params[:id]
    @product.update_attributes product_params

    redirect_to products_path
  end

  def edit
     @product = Product.find params[:id]
  end

  private

  def product_params
      params.require(:product).permit(:title, :price, :description, :institution_id, :category_id)
  end
end
