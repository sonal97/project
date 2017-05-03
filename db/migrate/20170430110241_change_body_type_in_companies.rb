class ChangeBodyTypeInCompanies < ActiveRecord::Migration[5.0]
  def change
    change_column :companies, :expiry_date, :datetime
  end
end
