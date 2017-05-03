class AddUserToFeedback < ActiveRecord::Migration[5.0]
  def change
    add_column :feedbacks, :references, :user
  end
end
