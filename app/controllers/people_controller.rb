class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]

  def index
    @person = Person.all
  end

  def show
    @person.schools
    @person.life_events
  end

  def create
    @person = Person.create(person_params)
    redirect_to @person, notice: 'New Person Created'
  end

  def destroy
    @person.destroy
    redirect_to @person, notice: 'Person Deleted'
  end

  private

    def set_person
      @person = Person.find(params[:id])
    end

    def person_params
      params.require(:person).permit(:name)
    end
end
