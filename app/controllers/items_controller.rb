class ItemsController < ApplicationController
skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @items = policy_scope(Item)
    @items = Item.all
  end

  def filtered_index
     @items = Item.where(params[:query] == params)
  end

  def show
    @item = Item.find(params[:id])
    authorize @item
    @booking = Booking.new
  end

  def new
    @item = Item.new
    authorize @item
  end

  def create
    @item = Item.new(items_params)
    @item.user = current_user
    authorize @item

    if @item.save!
      redirect_to item_path(@item)
    else
      render :new
    end
  end

  def destroy
  end

  def edit
  end

  def update
  end

  private

  def items_params
    params.require(:item).permit(:title, :size, :color, :price, :occasion, :brand, :description, :photos, :item_type)
  end
end
