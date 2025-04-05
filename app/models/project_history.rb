class ProjectHistory < ApplicationRecord
  belongs_to :project
  belongs_to :user

  validates :event_type, inclusion: { in: %w[comment status_change] }
  validates :content, presence: true
end
