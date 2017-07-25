class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  has_many :projects
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100#", large: "600x600>"}, default_url: "http://www.pi-cube.com/wp-content/uploads/2015/04/team-placeholder.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

end
