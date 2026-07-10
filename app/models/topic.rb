class Topic < ApplicationRecord
  belongs_to :user
  has_many :study_logs, dependent: :destroy
  validates :name, presence: { message: "を入力してください" }
end
