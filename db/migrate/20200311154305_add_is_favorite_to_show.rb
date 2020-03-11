class AddIsFavoriteToShow < ActiveRecord::Migration[5.2]
  def change
  	add_column :shows, :is_favorite, :boolean, default: false
  end
end
