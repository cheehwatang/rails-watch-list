class ChangeColumnNullToMovies < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:movies, :poster_url, true)
  end
end
