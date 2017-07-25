class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  validates :name, :username, presence: true
end
