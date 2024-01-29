class EventsController < ApplicationController

before_action :authenticate_user!, except: [:index,:show]

before_action :set_current_user

def index
    @events = Event.all
end

def show
    @event = Event.find(params[:id])
    @username = @event.creator.username
    @creator = @event.creator.id
    @attendees = @event.attendees
    @attendance = Attendance.new
    @user_attending = @event.attendees.include?(current_user)

end

def new 
  @event = Event.new 
end

def create
    @event = current_user.created_events.build(event_params)
    if @event.save
      flash[:success] = "Object successfully created"
      redirect_to @event
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
end

def destroy
  @event = Event.find(params[:id])
  if @event.destroy
    flash[:success] = 'Object was successfully deleted.'
    redirect_to events_path
  else
    flash[:error] = 'Something went wrong'
    redirect_to events_url
  end
end



private

def set_current_user
  @current_user = current_user 
  
end
def event_params
    params.require(:event).permit( :title,:creator_id ,:name, :description, :start_date, :location, :end_date)
end


end