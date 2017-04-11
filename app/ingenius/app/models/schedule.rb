class Schedule < ActiveRecord::Base

  default_scope { order(date: :asc) }

  #Relations
  belongs_to :event

  #Validations
  validates_presence_of :price, :date
  validates_numericality_of :price, less_than_or_equal_to: 9999, greater_than: 0
  validate :schedule_not_in_past

  private

  def schedule_not_in_past
    if date.present? && date < Date.today
      errors.add(:date, "can't be in the past")
    end
  end




end
