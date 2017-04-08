class Schedule < ActiveRecord::Base

  #Relations
  belongs_to :event

  #Validations
  validates_presence_of :price, :date
  validates_numericality_of :price

end
