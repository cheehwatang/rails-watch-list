class ReviewsController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @review = Review.new(review_params)
    @review.list = @list
    @reviews = @list.reviews.order(updated_at: :DESC)
    
    if @review.save
      redirect_to list_path(@list)
    else
      @bookmark = Bookmark.new
      @movies = Movie.excluding(@list.movies)
      render 'lists/show', status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
