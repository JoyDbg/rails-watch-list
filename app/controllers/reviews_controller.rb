class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.list = @List
    @review.save
    redirect_to list_path(@list)
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
