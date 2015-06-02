class Person < ActiveRecord::Base
  has_many :life_events
  has_many :schools
end
