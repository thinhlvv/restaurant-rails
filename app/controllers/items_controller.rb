class ItemsController < ApplicationController

  def show
    @item = Item.find_by_id(params[:id])
  end

  def create
  end

  def destroy
  end

  def index
    @items = Item.all()
  end

end
