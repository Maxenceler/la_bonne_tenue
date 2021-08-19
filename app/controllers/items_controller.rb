class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @items = policy_scope(Item)

    if params[:search].present?
      @items = @items.where(size: params[:search][:size]) if params[:search][:size].present?
      @items = @items.where(item_type: params[:search][:item_type]) if params[:search][:item_type].present?
    end
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
    @item = Item.find(params[:id])
  end

  def update
  end

  private

  def items_params
    params.require(:item).permit(:title, :size, :color, :price, :occasion, :brand, :description, :photos, :item_type)
  end
end
