class CommentsController < ApplicationController

  def create
    @event = Event.friendly.find(params[:event_id])
    @comment = @event.comments.create(comment_params)
    redirect_to event_path(@event), notice: 'Thanks for commenting on this event'
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:body, :event_id, :user_id)
    end
end
