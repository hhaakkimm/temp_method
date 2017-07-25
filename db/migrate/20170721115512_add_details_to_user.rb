class AddDetailsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :about, :text
    add_column :users, :username, :string
    add_column :users, :contact, :string
    add_column :users, :check, :boolean
    #add_column :users, :U_type,
  end
end
