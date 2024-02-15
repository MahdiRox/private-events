class Event < ApplicationRecord
    belongs_to :creator, class_name: "User", foreign_key: "creator_id"
    has_many :attendances, foreign_key: "event_id"
    has_many :attendees, through: :attendances, source: :user, foreign_key: "attendee_id"






    

scope :current, -> { where('(start_date <= ?) AND (end_date > ?)', Date.today, Date.today )}
scope :past, -> { where('end_date < ?', Date.today)}
scope :upcoming, -> { where('start_date > ?', Date.today)}
scope :is_private, -> { where(:is_private => true)}
scope :is_public, -> { where(:is_private => false)}



end
