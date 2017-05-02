class CreateTeamGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :team_goals do |t|
      t.references :team, foreign_key: true
      t.references :goal, foreign_key: true

      t.timestamps
    end
  end
end
