class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_item, only: [:edit, :destroy, :show ]

  def index
    @items = policy_scope(Item)
    @items = Item.all
  end

  def filtered_index
    @items = Item.where(params[:query] == params)
  end

  def show
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

  def edit
    authorize @item
  end

  def update
    @item = Item.find(params[:id])
    authorize @item

    if @item.update(items_params)
    redirect_to item_path(@item)
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    authorize @item
    redirect_to bookings_path
  end

  private

  def find_item
    @item = Item.find(params[:id])
  end

  def items_params
    params.require(:item).permit(:title, :size, :color, :price, :occasion, :brand, :description, :photos, :item_type)
  end
end
