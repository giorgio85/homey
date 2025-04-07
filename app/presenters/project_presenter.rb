class ProjectPresenter
    STATUSES = {
      "pending" => "Pending",
      "in_progress" => "In Progress",
      "completed" => "Completed",
      "archived" => "Archived"
    }.freeze

    def self.status_options
      STATUSES.map { |key, value| [ value, key ] }
    end
end
