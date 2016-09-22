class AddThumbnailToExperiences < ActiveRecord::Migration
  def change
    add_column :experiences, :thumbnail, :text
  end
end
