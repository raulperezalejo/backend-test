class Event < ActiveRecord::Base

  #Relations
  belongs_to :place
  belongs_to :category
  has_many :comments, dependent: :destroy

  #Validations
  validates_presence_of :name, :description, :image, :category, :place

end
