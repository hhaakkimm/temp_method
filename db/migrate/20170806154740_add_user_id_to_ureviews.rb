class AddUserIdToUreviews < ActiveRecord::Migration[5.1]
  def change
    add_column :ureviews, :user_id, :integer
  end
end
