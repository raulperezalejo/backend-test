class SchedulesController < ApplicationController

  def create
    @event = Event.friendly.find(params[:event_id])
    @schedule = @event.schedules.new(schedules_params)
    if @schedule.save
      redirect_to edit_event_path(@event), notice: 'Programación añadida correctamente'
    else
      redirect_to edit_event_path(@event), alert: "Schedule " + @schedule.errors.full_messages.first
    end

  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def schedules_params
      params.require(:schedule).permit(:date, :price)
    end
end
