class AttendeesEvents < ActiveRecord::Migration[7.1]
  create_table :attendees_events do |t|
    t.integer :attendee_id
    t.integer :attended_event_id
  
    t.timestamps
  end

  add_index :attendees_events, :attendee_id
  add_index :attendees_events, :attended_event_id
  
  
end
