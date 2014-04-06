class OwnersController < ApplicationController
  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params)
      if @owner.save
        redirect_to '/owners/new'
        flash[:notice] = "Owner created."
      else

      end
  end

  def index
    @owners = Owner.all
  end

  def owner_params
    params.require(:owner).permit(:first_name, :last_name, :email)
  end

end
