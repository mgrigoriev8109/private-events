class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :attendee, class_name: "User"
  validates :name, :location, :date, presence:true
end
