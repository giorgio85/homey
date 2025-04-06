# config/routes.rb
Rails.application.routes.draw do
  devise_for :users

  resources :projects do
    post 'change_status', on: :member  # This will trigger the 'change_status' action for each project
    resources :project_histories, only: [:create]
  end

  root to: "projects#index"
end