class RemoveNameFromFeedback < ActiveRecord::Migration[5.0]
  def change
    remove_column :feedbacks, :name, :string
  end
end
