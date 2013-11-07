# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

RsvpApp::Application.load_tasks



namespace :db do 
  task :seed do

    # create events

    p1 = Event.create(
      :name => 'Birthday Party',
      :date => 'Nov 11')

    p2 = Event.create(
      :name => 'Dinner Party',
      :date => 'Dec 1')

    p3 = Event.create(
      :name => 'Graduation',
      :date => 'Dec 16')

    # create invites

    f1 = Invite.create(
      :name => 'Sammy',
      :rsvp => 'yes',
      :event_id => Event.find_by(:name => 'Birthday').id)

    f2 = Invite.create(
      :name => 'Aaron',
      :rsvp => 'no',
      :event_id => Event.find_by(:name => 'Birthday').id)

    f3 = Invite.create(
      :name => 'Betty',
      :rsvp => 'yes',
      :event_id => Event.find_by(:name => 'Dinner Party').id)

    f3 = Invite.create(
      :name => 'Alice',
      :rsvp => 'no',
      :event_id => Event.find_by(:name => 'Graduation').id)

    f4 = Invite.create(
      :name => 'Dilbert',
      :rsvp => 'yes',
      :event_id => Event.find_by(:name => 'Graducation').id)

  end
end
