class AddAttachmentAvatarToUsers < ActiveRecord::Migration[4.2]
  def self.up
    change_table :users do |t|
      t.attachment :users, :avatar
    end
  end

  def self.down
    remove_attachment :users, :avatar
  end
end
