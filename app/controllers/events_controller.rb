class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index] 

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @event_attending = EventAttending.new()
  end

  def new
    @event = Event.new
  end

  def create
    @user = current_user
    @event = @user.created_events.build(event_params)

    if @event.save
      redirect_to events_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def event_params
      params.require(:event).permit(:name, :location, :date)

    end
end
