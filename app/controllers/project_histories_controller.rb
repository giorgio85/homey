class ProjectHistoriesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_project

    def create
      @project.project_histories.create(user: current_user, event_type: "comment", content: params[:content])
      redirect_to @project, notice: "Comment added successfully"
    end

    private

    def set_project
      @project = Project.find(params[:project_id])
    end
end
