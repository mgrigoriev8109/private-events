class Event < ApplicationRecord
  belongs_to :user, class_name: "Creator"
end
