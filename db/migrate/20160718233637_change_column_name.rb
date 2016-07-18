class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :projects, :github, :links
  end
end
