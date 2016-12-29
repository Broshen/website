class RemoveFieldsFromSkills < ActiveRecord::Migration
  def change
  	remove_column :skills, :proficiency
  	remove_column :skills, :description
  end
end
