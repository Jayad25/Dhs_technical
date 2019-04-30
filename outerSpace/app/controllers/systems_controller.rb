class SystemsController < ApplicationController
  def new
    @system = System.new
    render :new
  end

  def create
  @system = System.new(system_params)
  if @system.save
    redirect_to system_url(@system)
  else
      flash.now[:errors] = @system.errors.full_messages
      render :new
    end
  end
  def index
    @systems = System.all
    render :index
  end
  def show
    @system = System.find(params[:id])
    render :show
  end
  def update
    @system = System.find(params[:id])
   if @system.update(system_params)
     redirect_to system_url(@system)
   else
     flash.now[:errors] = @system.errors.full_messages
     render :edit
   end
  end
  def edit
    @system = System.find(params[:id])
    render :edit
  end

  def system_params
    params.require(:system).permit(:name,:radius)
  end
end
