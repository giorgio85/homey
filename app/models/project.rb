class Project < ApplicationRecord
    belongs_to :user
    has_many :project_histories, dependent: :destroy

    validates :name, presence: true
end
