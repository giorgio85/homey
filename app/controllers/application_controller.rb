class ApplicationController < ActionController::Base
  # Redirect to projects list after login
  def after_sign_in_path_for(resource)
    projects_path # Redirect to the projects index page after sign in
  end
end
