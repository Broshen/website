class AddSummaryLocationToExperience < ActiveRecord::Migration
  def change
  	add_column :experiences, :summary, :text
  	add_column :projects, :summary, :text
  	add_column :experiences, :location, :text 
  end
end
