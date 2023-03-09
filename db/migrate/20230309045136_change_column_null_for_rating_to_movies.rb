class ChangeColumnNullForRatingToMovies < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:movies, :rating, true)
  end
end
