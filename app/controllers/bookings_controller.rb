class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking)
    @bookings = Booking.where(params[:user] == current_user)
  end

  def show
  end

  def new
  end

  def create
    item = Item.find(params[:item_id])
    @booking = Booking.new()
    @booking.item = item
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to bookings_path
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

  def booking_params
    params.require(:booking).permit()
  end
end
