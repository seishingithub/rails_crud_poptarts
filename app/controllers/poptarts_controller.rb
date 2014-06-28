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

  private
  def poptart_params
    params.require(:poptart).permit(:flavor, :topping)
  end
end