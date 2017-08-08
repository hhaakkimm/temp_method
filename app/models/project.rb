class Project < ApplicationRecord
  belongs_to :user
  has_many :relationships
  has_many :reviews
  def	followers?(user_id)
  		self.relationships.find_by_user_id(user_id)
	end

  validates :mentor, presence:true
  validates :price, numericality:true
  validate do |project|
    GoodnessValidator.new(project).validate
  end
  # Project.exists?(["mentor LIKE ?", "%#{params[:search]}"])

  has_attached_file :file
  validates_attachment :file, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document application/text) }

end

class GoodnessValidator
  def initialize(project)
    @project = project
  end

  def validate
    # if User.where(:name => @project_mentor).blank?
    if User.exists?(email: @project.mentor)
      nil
    else
      @project.errors[:base] << "Такого нету"
    end
  end
end
