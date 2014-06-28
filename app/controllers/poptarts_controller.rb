class PoptartsController < ApplicationController

  def index
    @poptart = Poptart.new
    @poptarts = Poptart.all
  end

  def create
    @poptart = Poptart.create(poptart_params)
    if @poptart.save
      redirect_to poptarts_path
    else
      render :index
    end
  end

  def show
    @poptart = Poptart.find(params[:id])
  end

  def edit
    @poptart = Poptart.find(params[:id])
  end

  def update
    @poptart = Poptart.find(params[:id])
    @poptart.update_attributes!(poptart_params)

    redirect_to poptarts_path
  end

  def destroy
    @poptart = Poptart.find(params[:id]).delete

    redirect_to poptarts_path
  end

  private
  def poptart_params
    params.require(:poptart).permit(:flavor, :topping)
  end
end