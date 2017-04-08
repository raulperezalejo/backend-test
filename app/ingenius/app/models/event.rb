class Event < ActiveRecord::Base

  extend FriendlyId
  friendly_id :title

  # default_scope { Event.includes(:schedules).where.not(schedules: {id:nil}) }

  #Relations
  belongs_to :place
  belongs_to :category
  has_many :schedules
  has_many :comments, dependent: :destroy



  #Validations
  validates_presence_of :title, :description, :image, :category, :place
  # /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix


end
