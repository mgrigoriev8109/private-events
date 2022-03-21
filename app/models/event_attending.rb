class EventAttending < ApplicationRecord
  belongs_to :created_event, class_name: "Event", optional: true
  belongs_to :attended_event, class_name: "User", optional: true

  validates :attended_event_id, uniqueness: { scope: :event_attendee_id}
end
