class RenameAttendeesEventsToAttendances < ActiveRecord::Migration[7.1]
  def change
    rename_table :attendees_events, :attendances
  end
end
