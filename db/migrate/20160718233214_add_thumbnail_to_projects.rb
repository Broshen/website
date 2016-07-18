class AddThumbnailToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :Thumbnail, :text
  end
end
