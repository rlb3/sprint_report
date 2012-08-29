class Sprint < ActiveRecord::Base
  attr_accessible :end_sprint, :number, :start
  has_many :users

  def days
    start.to_datetime.business_days_until(end_sprint.to_datetime)
  end

end
