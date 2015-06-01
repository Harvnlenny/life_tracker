class LifeEvent < ActiveRecord::Base
  validates :content, length: { maximum: 140 }
  belongs_to :name
end
