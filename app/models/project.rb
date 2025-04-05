class Project < ApplicationRecord
    has_many :project_histories, dependent: :destroy
    belongs_to :user

    validates :name, presence: true
end
