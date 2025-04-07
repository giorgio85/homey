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

    def change_status
      @project = current_user.projects.find(params[:id])
      new_status = params[:status]  # Get the new status from params

      # Create the project history first before updating the status
      @project_history = @project.project_histories.create(
        user: current_user,
        event_type: "Status Changed",
        content: "Changed status from #{@project.status} to #{new_status}"
      )

      # Now update the project status
      if @project.update(status: new_status)
        flash[:notice] = "Project status updated successfully!"
      else
        flash[:alert] = "Failed to update project status."
      end

      redirect_to projects_path
    end

    private

    def set_project
      @project = Project.find(params[:id])
    end

    def project_params
      params.require(:project).permit(:name, :status)
    end
end
