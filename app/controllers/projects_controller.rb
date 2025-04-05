class ProjectsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_project, only: [ :show, :update ]

    def index
      @projects = Project.all
    end

    def show
      @project_histories = @project.project_histories.order(created_at: :asc)
    end

    def create
      @project = current_user.projects.new(project_params)
      if @project.save
        redirect_to @project, notice: "Project created successfully"
      else
        render :new
      end
    end

    def update
      if @project.update(project_params)
        @project.project_histories.create(user: current_user, event_type: "status_change", content: "Status changed to #{@project.status}")
        redirect_to @project, notice: "Project updated successfully"
      else
        render :edit
      end
    end

    private

    def set_project
      @project = Project.find(params[:id])
    end

    def project_params
      params.require(:project).permit(:name, :status)
    end
end
