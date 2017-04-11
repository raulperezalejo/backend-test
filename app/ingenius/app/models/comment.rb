class Comment < ActiveRecord::Base

  #Relations
  belongs_to :event
  belongs_to :user

  #Validations
  validates_presence_of :body

end
