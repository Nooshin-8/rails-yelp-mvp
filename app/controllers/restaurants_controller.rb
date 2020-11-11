class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all # user can see all the resturants
  end

  # A visitor can add a new restaurant,
  # and be redirected to the show view of that new restaurant.
  # They fill the form (get, new) and submit it (post, create).
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params[:id])
    @restaurant.save
    redirect_to restaurant_path(@restaurant) # redirected to the show page
  end

  # A visitor can see the details of a restaurant, so we need the id
  def show
    @restaurant = Restaurant.find(params[:id])
  end
end

private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
