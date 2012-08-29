class User < ActiveRecord::Base
  attr_accessible :name, :percent, :sprint_id, :role
  belongs_to :sprint
end
