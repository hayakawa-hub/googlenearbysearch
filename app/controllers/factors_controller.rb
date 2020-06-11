class FactorsController < ApplicationController

  def index
    @factor=Factor.all
  end
  def new
    @factor=Factor.new
  end

  def show
   @factor=Factor.find(params[:id])
   @address=@factor['address']
   @word=@factor['word']
   gon.address=@factor['address']
   gon.word=@factor['word']
  end

  def create
    if request.post?
      @factor=Factor.create(factor_params)
    end
    redirect_to @factor
  end

  def destroy
    factor=Factor.find(params[:id])
    factor.destroy
    redirect_to '/factors'
  end

end

  private

  def factor_params
    params.require(:factor).permit(:address, :word)
  end
