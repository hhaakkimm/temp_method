class AddAvratingToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :avrating, :double, default: 0
    add_column :users, :avcount, :integer, default: 0
  end
end
