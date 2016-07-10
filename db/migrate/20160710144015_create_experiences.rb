class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :start
      t.string :end
      t.text :description

      t.timestamps null: false
    end
  end
end
