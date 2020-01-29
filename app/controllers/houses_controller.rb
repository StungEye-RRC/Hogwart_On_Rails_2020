class HousesController < ApplicationController
  # GET /
  def index
    @houses = House.all
  end
  # Then automagically load the associated view:
  #   app/views/houses/index.html.erb
  # And share the @houses instance var with this view.

  # GET /houses/:id
  def show
    @house = House.find(params[:id])
  end
  # Then automagically load the associated view:
  #   app/views/houses/show.html.erb
  # And share the @house instance var with this view.
end
