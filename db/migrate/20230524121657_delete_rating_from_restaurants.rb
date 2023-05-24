class DeleteRatingFromRestaurants < ActiveRecord::Migration[7.0]
  def change
    remove_column :restaurants, :rating
  end
end
