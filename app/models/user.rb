class User < ActiveRecord::Base
  attr_accessible :name, :percent, :sprint_id, :role
  belongs_to :sprint

  validates :name, :percent, :sprint_id, :role, :presence => true
  validates :percent,
            :numericality => { :only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 100 }
end
