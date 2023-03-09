class MoviesController < ApplicationController
  def show
    @list = List.find(params[:list_id])
    @movie = Movie.find(params[:id])
  end
end
