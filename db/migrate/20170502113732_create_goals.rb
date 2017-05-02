class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.string :title
      t.integer :goal
      t.datetime :goal_date
      t.integer :goal_progress
      t.text :description
      t.string :slug

      t.timestamps
    end
  end
end
