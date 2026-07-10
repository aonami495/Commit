class StudyLog < ApplicationRecord
  belongs_to :user
  belongs_to :topic

  scope :in_progress, -> { where(finished_at: nil) }

  def duration
    finished_at - started_at
  end
end
