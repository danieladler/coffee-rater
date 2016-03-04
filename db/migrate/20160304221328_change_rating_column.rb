class ChangeRatingColumn < ActiveRecord::Migration
  def change
    rename_column :ratings, :cafe_id, :kaffii_id
  end
end
