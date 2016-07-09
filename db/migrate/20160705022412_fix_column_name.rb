class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :skills, :type, :skilltype
  end
end
