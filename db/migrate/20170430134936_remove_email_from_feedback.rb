class RemoveEmailFromFeedback < ActiveRecord::Migration[5.0]
  def change
    remove_column :feedbacks, :email, :string
  end
end
