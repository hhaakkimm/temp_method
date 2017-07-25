class CreateRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :relationships do |t|
      t.integer :user_id
      t.integer :project_id
      t.boolean :confirm_add

      t.timestamps
    end
  end
end
