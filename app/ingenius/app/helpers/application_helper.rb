module ApplicationHelper

  def places
    @places = Place.all
  end

  def categories
    @categories = Category.all
  end

  def alert_type(name)
    if name=='notice'
      return 'info'
    elsif name == 'alert'
      return 'danger'
    end
  end

  def twitter_share(event)
    "http://twitter.com/home?status=Iré al #{event.title} @ #{event.schedules.first.date.strftime("%d/%m/%Y")} #{event.schedules.first.date.strftime("%H:%M")} #{event_url(event)}"
  end



end
