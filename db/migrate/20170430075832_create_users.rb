class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :email
      t.string :salt
      t.string :encrypted_password
      t.integer :h_no
      t.integer :sector
      t.string :city
      t.string :state
      t.string :country
      t.integer :pincode
      t.integer :phone_no

      t.timestamps
    end
  end
end
