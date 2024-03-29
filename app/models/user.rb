class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
   devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable,
          authentication_keys: [:email]

   has_many :created_events, foreign_key: "creator_id", class_name: "Event"
   has_many :attendances, foreign_key: "attendee_id"
   has_many :attended_events, through: :attendances, source: :event, foreign_key: "event_id"
    
   
  

end
 
       