class EventAttending < ApplicationRecord
  belongs_to :created_event, class_name: "Event"
  belongs_to :attended_event, class_name: "User"
end
