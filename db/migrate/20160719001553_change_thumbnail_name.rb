class ChangeThumbnailName < ActiveRecord::Migration
  def change  	
  	rename_column :projects, :Thumbnail, :thumbnail
  end
end
