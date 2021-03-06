class RestaurantsController < ApplicationController
	 def index
  	@restaurants = Restaurant.all 
  end

  def new
  	@restaurant = Restaurant.new
  end

  def show
  	@restaurant = Restaurant.find(params[:id])
  end


  def create
    @restaurant = Restaurant.new(restaurant_params)
    # @restaurant.save

    # redirect_to restaurants_path

    if @restaurant.save
      upload_picture
      redirect_to @restaurant
    else
      render 'new'
    end
  end


  def update
       @restaurant = Restaurant.find(params[:id])

      if @restaurant.update(restaurant_params)
        upload_picture
        redirect_to @restaurant
      else
        render 'edit'
      end
  end

  def destroy
  	@restaurant = Restaurant.find(params[:id])
    @restaurant.destroy

    redirect_to restaurants_path
  end

  def edit
  end

  private

  def restaurant_params
      params.require(:restaurant).permit(:title, :description)
  end
end
