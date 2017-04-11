class CommentsController < ApplicationController

  def create
    @event = Event.friendly.find(params[:event_id])
    @comment = @event.comments.create(comment_params)
    if @comment.save
      redirect_to event_path(@event), notice: 'Gracias, su comentario será tenido en cuenta'
    else
      redirect_to event_path(@event), alert: "Comment " + @comment.errors.full_messages.first
    end

  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:body, :event_id, :user_id)
    end
end
