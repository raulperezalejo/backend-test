require 'support/factory_girl'
require 'support/factory'
require 'rails_helper'


RSpec.describe Event, type: :model do

  context "Create new event" do

    before do
      @user = create(:user)
      FactoryGirl.create_list(:place, 3)
      FactoryGirl.create_list(:category, 3)
      @image = 'https://images.pexels.com/photos/153951/pexels-photo-153951.jpeg?dl&fit=crop&w=640&h=426'
    end


    it "with all inputs" do
      event = Event.new
      event.title = 'title for this event'
      event.description = 'this is a description test for an event'
      event.image = @image
      event.place_id = Place.first.id
      event.category_id = Category.first.id
      event.save
      expect(event).to be_valid
    end

    it "without title " do
      event = Event.new
      event.title = ''
      event.description = 'this is a description test for a event'
      event.image = @image
      event.place = @place
      event.category = @category
      event.save
      expect(event).to_not be_valid
    end

    it "without description" do
      event = Event.new
      event.title = 'title for this event'
      event.description = ''
      event.image = @image
      event.place = @place
      event.category = @category
      event.save
      expect(event).to_not be_valid
    end
  end

  context "Comments" do
    it "add comments to a event" do
      @user = create(:user)
      @event = create(:event)
      @event.comments << @event.comments.create!(:body => "first comment", user_id: @user.id)
      @event.comments << @event.comments.create!(:body => "second comment", user_id: @user.id)
      expect(@event.comments.count).to eq(2)
    end
  end
end
