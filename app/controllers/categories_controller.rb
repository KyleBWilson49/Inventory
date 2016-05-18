class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def create
    @category = Category.new(category_params)
    @category.user_id = current_user.id

    if @user.save
      render :index
    else
      render :new
    end
  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)

    @current_user = current_user

    render :update
  end

  private
  def category_params
    params.require(:item)
      .permit(:name, :parent_id, :item_id)
end
