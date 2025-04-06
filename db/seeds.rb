# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Create users
user1 = User.create!(email: "user1@example.com", password: "password123", password_confirmation: "password123")
user2 = User.create!(email: "user2@example.com", password: "password123", password_confirmation: "password123")
user3 = User.create!(email: "user3@example.com", password: "password123", password_confirmation: "password123")

# Create projects
project1 = Project.create!(name: "Project 1", status: "pending", user: user1)
project2 = Project.create!(name: "Project 2", status: "in_progress", user: user2)
project2 = Project.create!(name: "Project 2", status: "completed", user: user3)

# Add some comments and status changes
project1.project_histories.create!(user: user1, event_type: "comment", content: "Initial comment on Project 1")
project1.project_histories.create!(user: user2, event_type: "status_change", content: "Changed status to in_progress")
project2.project_histories.create!(user: user2, event_type: "comment", content: "Initial comment on Project 2")
project2.project_histories.create!(user: user1, event_type: "status_change", content: "Changed status to completed")