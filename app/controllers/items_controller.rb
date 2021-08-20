class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_item, only: [:edit, :destroy, :show ]

  def index
    @items = policy_scope(Item)

    if params[:search].present?
      @items = @items.where(size: params[:search][:size]) if params[:search][:size].present?
      @items = @items.where(item_type: params[:search][:item_type]) if params[:search][:item_type].present?
    end
  end

  def show
    authorize @item
    @booking = Booking.new

    @bookings = @item.bookings
    @bookings_dates = @bookings.map do |booking|
      {
        from: booking.beginning_date,
        to:   booking.ending_date
      }
    end
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
    params.require(:item).permit(:title, :size, :color, :price, :occasion, :brand, :description, :main_photo, :item_type, photos: [])
  end
end
