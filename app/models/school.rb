class School < ActiveRecord::Base
  belongs_to :person
  #validates :ending_year, numericality: {greater_than_or_equal_to: beginning_year }
end
