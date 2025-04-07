# Homey

Homey is a Ruby on Rails application for managing project conversation history. Users can comment on projects, track status changes, and view the full history in a chronological timeline.

## Features

- User authentication (Devise)
- CRUD operations for projects
- Project status tracking (`pending`, `in_progress`, `completed`, `archived`)
- Commenting system for project discussions
- TailwindCSS for styling
- Database-backed conversation history

## Questions for the Team

- **Should a project have multiple users who can comment and change status?**
  - ✅ Yes, multiple users should be able to interact with a project.

- **What are the possible statuses a project can have?**
  - ✅ `pending`, `in_progress`, `completed`, `archived`

- **Should users be authenticated, or is this open for anyone?**
  - ✅ Users should be authenticated.

- **Should we store timestamps for comments and status changes?**
  - ✅ Yes, timestamps are necessary for tracking changes.

- **Should comments support rich text (e.g., markdown) or just plain text?**
  - ✅ Plain text is sufficient.

- **Should status changes require a comment or reason?**
  - ✅ Not required, but optional.

- **How should the conversation history be displayed?**
  - ✅ Chronologically, with comments and status changes in order.

- **Should there be a UI component for the project conversation history?**
  - ✅ Yes, styled using Tailwind CSS.

## Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/giorgio85/homey.git
   cd homey
   ```
2. Install dependencies:
   ```sh
   bundle install
   ```
3. Set up the database:
   ```sh
   rails db:create db:migrate db:seed
   ```
4. Start the server:
   ```sh
   rails s
   ```
## Heroky URL
https://homey-9e92389d463d.herokuapp.com/

## Test User
* Login: user1@example.com
* Password: password123

## API Endpoints

### Authentication (Devise)

- `POST /users/sign_in` – Login
- `DELETE /users/sign_out` – Logout
- `POST /users` – Register

### Projects

- `GET /projects` – List all projects
- `POST /projects` – Create a new project
- `GET /projects/:id` – Show project details
- `PATCH /projects/:id` – Update a project
- `DELETE /projects/:id` – Delete a project

### Project Status Change

- `POST /projects/:id/change_status` – Change the status of a project

### Comments

- `POST /projects/:project_id/project_histories` – Add a comment to a project

## Deployment

### Heroku Setup

1. Install Heroku CLI:
   ```sh
   brew install heroku
   ```
2. Login to Heroku:
   ```sh
   heroku login
   ```
3. Create a Heroku app:
   ```sh
   heroku create homey-app
   ```
4. Set up database:
   ```sh
   heroku addons:create heroku-postgresql:hobby-dev
   ```
5. Deploy:
   ```sh
   git push heroku main
   ```
6. Run database migrations:
   ```sh
   heroku run rails db:migrate
   ```
7. Open the app:
   ```sh
   heroku open
   ```

- **Assets not loading on Heroku?**
  - Run:
    ```sh
    heroku run rake assets:precompile
    ```

## Contributing

1. Fork the repository.
2. Create a feature branch (`git checkout -b feature-name`).
3. Commit changes (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature-name`).
5. Open a Pull Request.

## License

This project is licensed under the MIT License.