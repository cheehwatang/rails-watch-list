class ChangeColumnDefaultImageUrlToLists < ActiveRecord::Migration[7.0]
  def change
    change_column_default :lists, :image_url, 'https://res.cloudinary.com/dsx50recn/image/upload/v1678431817/movie_not_found_i680jc.png'
  end
end
