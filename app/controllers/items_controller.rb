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

  def update
    @item = Item.find(params[:id])
    @item.update(user_params)

    @current_user = current_user

    render :update
  end

  private
  def item_params
    params.require(:item)
      .permit(:name, :photo, :description, :purchace_price)
end
