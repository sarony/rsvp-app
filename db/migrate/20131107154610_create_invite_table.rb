class CreateInviteTable < ActiveRecord::Migration
  def change
    create_table :invite_tables do |t|
      t.string :name
      t.string :rsvp
      t.integer :event_id
    end
  end
end
