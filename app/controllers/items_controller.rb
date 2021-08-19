class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @items = policy_scope(Item)
    @items = Item.all

    # @items = @items.select { |i| i.beginning_date_id == params[:beginning_date] } unless params[:beginning_date].blank?
    # @items = @items.select { |i| i.ending_date_id == params[:ending_date] } unless params[:ending_date].blank?
    # @items = @items.select { |i| i.size == params[:size] } unless params[:size].blank?
    # @items = @items.select { |i| i.type_id == params[:item_type] } unless params[:item_type].blank?

    @items = Item.where(size: params[:size])
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
