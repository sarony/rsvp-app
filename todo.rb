WHAT THE FUCK ARE YOU DOING TODAY?
- decide how you want your app to look
- organize youre fucking views
- fix your UX
- add ajax to the pages you want
- add login page/user authentication
- add sessions and cookies

***
DESIGN
- change RSVP to be a boolean: true, false buttons (yes/no)
- change "invites sent to" => "attendees" with "yes/no"


****

Create an event => # /events/new
Invite new users to the event => # /events/1/invites/new
User rsvps to the event => # /invites/1/edit


2 Models
- event :has_many invites
  - name, date, rsvps[collection of invite.rsvps](through the foreign id)
- invite :belongs_to event
  - person_name, rsvp
  - needs the event_id

Controllers
- basic CRUD

# TODO:

# 1. make the event model 
# 2. generate the migration for event with the attributes I want
# 3. run 'rake db:migrate'
# 4. make the invite model
# 5. generate the migration for invite with the attributes I want
# 6. run 'rake db:migrate'
# 7. make and seed data
# 8. generate controllers or scaffold?
# 9. get routes ready => nest your resources
# 10. generate your views

- Making a new event + attendees
- Make a new event. When "create" redirect to the "invites/new" page.
- for each invite person, Invite.create(:name => params[:name], :event_id => params[:event_id])

- Use AJAX for new invite to be on the same page
- Use AJAX for new event to be on the same page







