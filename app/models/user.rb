class User < ActiveRecord::Base
  attr_accessible :name, :percent, :sprint_id
  belongs_to :sprint
end
