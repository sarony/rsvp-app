class CreateEventTable < ActiveRecord::Migration
  def change
    create_table :event_tables do |t|
      t.string :name
      t.string :date
    end
  end
end
