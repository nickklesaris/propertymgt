class BuildingsController < ApplicationController
  def new
    @building = Building.new
  end

  def create
    @building = Building.new(building_params)
    if @building.save
      @message = 'Building created.'
      redirect_to '/buildings/new'
    else
      #notice: 'Please check form for errors.'
    end
  end

  def index
    @buildings = Building.all
  end

  def building_params
  end
end
