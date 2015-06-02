class LifeEvent < ActiveRecord::Base
  belongs_to :school
  validates :content, length: { maximum: 140 }
end
