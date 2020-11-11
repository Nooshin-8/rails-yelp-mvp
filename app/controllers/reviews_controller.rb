class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  # POST /restaurants/:restaurant_id/reviews
  # params:
  # {"review"=>{"content"=>"I loved it"}, "restaurant_id"=>"1"}
  # The id is in the url but the content is not but they are in the same hash
  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
  end

  # DELETE /reviews/:id
  def destroy
    review = Review.find(params[:id])
    @review.destroy
    redirect_to restaurant_path(review.restaurant)
    redirect_to restaurant_path(@review.restaurant)
  end

  private

  # a hash of form data with non-permitted keys filtered out
  def review_params
    params.require(:review).permit(:content)
  end
end
