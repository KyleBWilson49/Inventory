class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id

    if @user.save
      render :index
    else
      render :new
    end
  end

  private
  def item_params
    params.require(:item)
      .permit(:name, :photo, :description, :purchace_price)
end
