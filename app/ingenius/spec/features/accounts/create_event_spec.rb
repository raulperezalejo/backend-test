require "rails_helper"

feature "Event" do

  before do
    FactoryGirl.create_list(:place, 3)
    FactoryGirl.create_list(:category, 3)
    create(:user)
    visit '/'
    fill_in 'user_email', :with => "test@test.com"
    fill_in "user_password", :with => "test123"
    click_button "Log in"
    expect(page).to have_content("Signed in successfully.")
  end

  scenario "creating a new Event" do
    click_link 'add_event'
    fill_in 'event_title', :with => "Test"
    fill_in "event_description", :with => "Test"
    select 'Place 1', :from => 'event_place_id'
    select 'Category 1', :from => 'event_category_id'
    fill_in "event_image", :with => "https://images.pexels.com/photos/153951/pexels-photo-153951.jpeg?dl&fit=crop&w=640&h=426"
    click_button "Create Event"
    expect(page).to have_content("Evento creado, ahora puede añadir las fechas.")
  end

end