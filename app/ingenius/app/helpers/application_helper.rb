module ApplicationHelper

  def places
    @places = Place.all
  end

  def categories
    @categories = Category.all
  end



end
