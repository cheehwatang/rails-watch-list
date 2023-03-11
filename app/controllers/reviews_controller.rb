class ReviewsController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @review = Review.new(review_params)
    @review.list = @list
    
    if @review.save
      redirect_to list_path(@list), notice: 'Review was successfully posted'
    else
      @reviews = @list.reviews.order(updated_at: :DESC)
      @bookmark = Bookmark.new
      @movies = Movie.excluding(@list.movies).order(:title)
      render 'lists/show', status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
