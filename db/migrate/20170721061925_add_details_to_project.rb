class AddDetailsToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :mentor, :string
  end
end
