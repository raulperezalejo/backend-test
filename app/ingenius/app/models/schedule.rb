class Schedule < ActiveRecord::Base

  #Relations
  has_many :event

  #Validations
  validates_presence_of :price, :schedule_date

end
