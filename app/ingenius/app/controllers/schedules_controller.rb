class SchedulesController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    @schedule = @event.schedules.create(schedules_params)
    redirect_to event_path(@event)
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def schedules_params
      params.require(:schedule).permit(:date, :price)
    end
end
