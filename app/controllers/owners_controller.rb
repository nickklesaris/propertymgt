class OwnersController < ApplicationController
  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params)
      if @owner.save
        @message = 'Owner created.'
        redirect_to '/owners/new'
      else
        @message = 'Please check form for errors.'
      end
  end

  def index
    @owners = Owner.all
  end

  def owner_params
  end

end
