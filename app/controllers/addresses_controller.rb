class AddressesController < ApplicationController
  def index
    @address = Address.all
  end

  def show
    @address = Address.find(params[:id])
  end

  def new; end

  def create
    @address = Address.new(address_params)
    if @address.save
      redirect_to @address
    else
      render action: 'new'
    end
  end

  private

  def address_params
    params.require(:address).permit(:name)
  end
end
