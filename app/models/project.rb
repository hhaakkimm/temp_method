class Project < ApplicationRecord
  belongs_to :user
  has_many :relationships

  def	followers?(user_id)
  		self.relationships.find_by_user_id(user_id)
	end
end
