class AttendancesController < ApplicationController
    def new
        @attendance = Attendance.new
    end

    def create
        @attendance = Attendance.new(attendee_id: current_user.id, event_id: event_params)
        if @attendance.save
            flash[:notice] = 'Event attendance registered'
            redirect_to event_url(@attendance.event), status: :see_other
        else
            render :new, status: :unprocessable_entity
        end
      end


    def destroy
        @attendance = current_user.attendances.find_by(event_id: event_params)
        @attendance.destroy
    
        flash[:notice] = 'Event attendance cancelled'
        redirect_to event_url(@attendance.event), status: :see_other
      end
    

    private
    def event_params
        params.require(:id)
    end
end