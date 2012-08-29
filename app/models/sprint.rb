class Sprint < ActiveRecord::Base
  attr_accessible :end, :number, :start
  has_many :users
end
