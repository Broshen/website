class AddGalleryToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :gallery, :text
  end
end
