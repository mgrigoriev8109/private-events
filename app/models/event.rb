class Event < ApplicationRecord
  belongs_to :user, class_name: "Creator"
  validates :name, :location, :date, presence:true
end
