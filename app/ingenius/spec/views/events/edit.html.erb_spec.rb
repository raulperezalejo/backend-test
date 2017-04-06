require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :title => "MyString",
      :description => "MyText",
      :featured => "",
      :image => "MyString",
      :place => 1,
      :category => 1,
      :dates => 1
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input#event_title[name=?]", "event[title]"

      assert_select "textarea#event_description[name=?]", "event[description]"

      assert_select "input#event_featured[name=?]", "event[featured]"

      assert_select "input#event_image[name=?]", "event[image]"

      assert_select "input#event_place[name=?]", "event[place]"

      assert_select "input#event_category[name=?]", "event[category]"

      assert_select "input#event_dates[name=?]", "event[dates]"
    end
  end
end
