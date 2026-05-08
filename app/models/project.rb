class Project < ApplicationRecord
  belongs_to :user
  validates :archive, default: false
end
