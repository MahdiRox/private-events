class ChangeAttendedEventIdToEventId < ActiveRecord::Migration[7.1]
  def change
    rename_column :attendances, :attended_event_id, :event_id
    rename_index :attendances, :index_attendees_on_attended_event_id, :index_attendees_on_event_id

  end
end
