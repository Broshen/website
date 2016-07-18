class AddLinksToExperiences < ActiveRecord::Migration
  def change
    add_column :experiences, :links, :text
  end
end
