class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :landmark
      t.string :sector
      t.string :city
      t.string :state
      t.string :country
      t.string :pincode
      t.integer :experience
      t.integer :salary
      t.integer :expiry_date

      t.timestamps
    end
  end
end
