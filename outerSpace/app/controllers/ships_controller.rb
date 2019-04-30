class ShipsController < ApplicationController
  def new
    @ship = Ship.new
    render :new
  end

  def create
    ship = Ship.new(ship_params)
    if ship.save
      redirect_to ship_url(ship)
    else
      flash[:errors] = ship.errors.full_messages
    end
  end


  def show
    @ship = Ship.find(params[:id])
    render :show
  end

  def edit
    @ship = Ship.find(params[:id])
    render :edit
  end

  def update
    @ship = Ship.find(params[:id])
   if @ship.update(ship_params)
     redirect_to ship_url(@ship)
   else
     flash.now[:errors] = @ship.errors.full_messages
     render :edit
   end
  end


  def ship_params
    params.require(:ship).permit(:name,:velocity,:system_id)
  end
end
