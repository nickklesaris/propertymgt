class BuildingsController < ApplicationController
  def new
    @building = building.new
  end
end
