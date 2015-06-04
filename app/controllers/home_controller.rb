class HomeController < ApplicationController
  def index
    @schools = School.all
    @school = @schools.last
    @life_events = LifeEvent.all
    @life_event = @life_events.last

  end
end
