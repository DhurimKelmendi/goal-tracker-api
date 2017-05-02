class CreateCompanyGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :company_goals do |t|
      t.references :goal, foreign_key: true
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
