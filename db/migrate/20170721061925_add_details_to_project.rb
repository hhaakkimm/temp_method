class AddDetailsToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :mentor, :string
    add_column :projects, :sts, :integer, default:0
  end
end
