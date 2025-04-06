# homey
 Ruby on Rails to build a project conversation history.

## Questions for the Team

* Should a project have multiple users who can comment and change status?

Expected Answer: Yes, multiple users should be able to interact with a project.

* What are the possible statuses a project can have?

Expected Answer: Possible statuses include: pending, in_progress, completed, archived.

* Should users be authenticated, or is this open for anyone?

Expected Answer: Users should be authenticated.

* Should we store timestamps for comments and status changes?

Expected Answer: Yes, timestamps are necessary for tracking changes.

* Should comments support rich text (e.g., markdown) or just plain text?

Expected Answer: Plain text is sufficient.

* Should status changes require a comment or reason?

Expected Answer: Not required, but optional.

* How should the conversation history be displayed?

Expected Answer: Chronologically, with comments and status changes in order.

* Should there be a UI component for the project conversation history?

Expected Answer: Yes, and it should be styled using Tailwind CSS.

# Set up the project
* 'rails db:create' 
* 'rails db:create' 
* 'rails db:seed' 

# Run the project
'rails s'

## User credentials:
login: user1@example.com
password: password123