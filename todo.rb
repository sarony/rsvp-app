Create an event
Invite new users to the event
User rsvps to the event

2 Models
- event :has_many invites
  - name, date, rsvps[collection of invite.rsvps]
- invite :belongs_to event
  - person_name, rsvp
  - needs the event_id

Controllers
- basic CRUD

# TODO:

1. make the event model 
2. generate the migration for event with the attributes I want
3. run 'rake db:migrate'
4. make the invite model
5. generate the migration for invite with the attributes I want
6. run 'rake db:migrate'
7. make and seed data
8. generate controllers or scaffold?
9. get routes ready => nest your resources
10. generate your views

