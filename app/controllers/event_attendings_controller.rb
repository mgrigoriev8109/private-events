require 'debug'
class EventAttendingsController < ApplicationController
  before_action :authenticate_user!, except: [:index] 

  def index
    @event_attendings = EventAttendings.all
  end

  def show
    @event_attending = EventAttending.find(params[:id])
  end

  def new
    @event_attending = EventAttending.new()
  end

  def create
    @event_attending = EventAttending.new(event_attendee_id: params[:event_attendee_id], attended_event_id: params[:attended_event_id])

    if @event_attending.save
      redirect_to events_path
    else
      render :new, status: :unprocessable_entity
    end
  end
end
