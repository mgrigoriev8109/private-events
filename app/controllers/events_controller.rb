class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index] 

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.creator_id = current_user.id
    
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
