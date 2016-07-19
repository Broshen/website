class ChangeLinksTypeInProjects < ActiveRecord::Migration
  def change
  	change_column :projects, :links, :text
  end
end
