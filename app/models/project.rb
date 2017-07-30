class Project < ApplicationRecord
  belongs_to :user
  has_many :relationships

  def	followers?(user_id)
  		self.relationships.find_by_user_id(user_id)
	end

  has_attached_file :file
  validates_attachment :file, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document application/text) }
end
