class ItemsController < ApplicationController
  def index
    @item = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new; end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to @item
    else
      render action: 'new'
    end
  end

  private

  def item_params
    params.require(:item).permit(:number, :description)
  end
end
