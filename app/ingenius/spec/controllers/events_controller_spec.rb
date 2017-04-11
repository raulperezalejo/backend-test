require 'support/factory_girl'
require 'support/factory'
require 'rails_helper'

RSpec.describe EventsController, type: :controller do

  describe "Get Event" do

    before do
      @user = create(:user)
      @event = create(:event)
      allow(request.env['warden']).to receive(:authenticate!).and_return(@user)
      allow(controller).to receive(:current_user).and_return(@user)
    end

    it "show all Events" do
      get :index
      expect(response).to render_template(:index)
    end

    it "show one event" do
      get :show, id:@event.id
      expect(response).to render_template(:show)
    end


  end
end
