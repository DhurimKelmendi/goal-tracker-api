class CreateUserGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :user_goals do |t|
      t.references :goal, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
