class BookmarksController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    
    if @bookmark.save
      redirect_to list_path(@list), notice: 'Movie was successfully added'
    else
      @movies = Movie.excluding(@list.movies)
      @reviews = @list.reviews.order(updated_at: :DESC)
      @review = Review.new
      render 'lists/show', status: :unprocessable_entity
    end
  end

  def destroy
    bookmark = Bookmark.find(params[:id])
    list = bookmark.list
    bookmark.destroy

    redirect_to list_path(list), status: :see_other
  end

  private
  
  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
