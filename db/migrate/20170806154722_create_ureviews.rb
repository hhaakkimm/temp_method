class CreateUreviews < ActiveRecord::Migration[5.1]
  def change
    create_table :ureviews do |t|
      t.integer :uratingone
      t.integer :uratingtwo
      t.integer :uratingthree
      t.integer :uratingfour
      t.integer :uratingfive

      t.text :ucomment

      t.timestamps
    end
  end
end
