class Category < ActiveRecord::Base

  #Relations
  has_many :events, dependent: :destroy

  #Validations
  validates_presence_of :name


end
