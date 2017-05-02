class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :invitation_code

      t.timestamps
    end
    add_index :companies, :invitation_code, unique: true
  end
end
