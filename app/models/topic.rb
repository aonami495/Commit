class Topic < ApplicationRecord
  belongs_to :user
  validates :name, presence: { message: "を入力してください" }
end
