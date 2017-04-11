FactoryGirl.define do

  factory :user do
    email "test@test.com"
    password "test123"
  end

  #
  # factory :place do
  #   name "place A"
  # end

  factory :place do
    sequence(:name) { |n| "Place #{n}" }
  end
  #
  # factory :category do
  #   name "category A"
  # end


  factory :category do
    sequence(:name) { |n| "Category #{n}" }
  end


  factory :event do
    title "Testing Event"
    description  "this is the body of the testing event"
    image 'https://images.pexels.com/photos/153951/pexels-photo-153951.jpeg?dl&fit=crop&w=640&h=426'
    featured nil
    association :place, factory: :place, name: "Place 1"
    association :category, factory: :category, name: "Category 1"

  end


end