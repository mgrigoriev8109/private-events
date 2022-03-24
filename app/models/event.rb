class Event < ApplicationRecord
  has_many :event_attendings, foreign_key: :attended_event_id
  has_many :attendees, through: :event_attendings, source: :event_attendee
  belongs_to :creator, class_name: "User"

  validates :name, :location, :date, presence:true

  scope :past, ->(current_date) { where("date < ?", current_date) }
  scope :future, ->(current_date) { where("date > ?", current_date) }

end
