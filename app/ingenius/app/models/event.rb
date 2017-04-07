class Event < ActiveRecord::Base

  #Relations
  belongs_to :place
  belongs_to :category
  belongs_to :schedules
  has_many :comments, dependent: :destroy


  #Validations
  validates_presence_of :title, :description, :image, :category, :place

end
