class CreateFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :feedbacks do |t|
      t.text :comment
      t.string :email
      t.integer :phone_no

      t.timestamps
    end
  end
end
