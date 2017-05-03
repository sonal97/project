class AddColumnsToAdmin < ActiveRecord::Migration[5.0]
  def change
    add_column :admins, :email, :string
    add_column :admins, :password, :string
  end
end
