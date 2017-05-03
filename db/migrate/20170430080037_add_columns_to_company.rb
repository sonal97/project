class AddColumnsToCompany < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :email, :string
    add_column :companies, :phone_no, :string
  end
end
