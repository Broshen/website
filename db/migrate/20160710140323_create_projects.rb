class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :languages
      t.text :description
      t.string :github

      t.timestamps null: false
    end
  end
end
