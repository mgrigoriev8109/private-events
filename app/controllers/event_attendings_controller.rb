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
    @event_attending = EventAttending.new(attending_params)

    if @event_attending.save
      redirect_to events_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def attending_params
    params.require(:event_attending).permit(:event_attendee_id, :attended_event_id)
  end
end
