class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking)
    @bookingss = Booking.all
    @bookings = Booking.where(user: current_user)
    @items = Item.where(user: current_user)

  end

  def show
  end

  def new
  end

  def create
    @item = Item.find(params[:item_id])
    @booking = Booking.new(booking_params)
    @booking.item = @item
    @booking.user = current_user
    authorize @booking
    if @booking.save
    redirect_to bookings_path
     else
      @booking = Booking.new
      flash[:alert] = "Item already booked for these dates"
      render 'items/show'
    end
  end

  def destroy
  end

  def edit
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.status = params[:status]
    @booking.save
    redirect_to bookings_path
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:beginning_date, :ending_date)
  end

  def set_dates
    dates = params[:booking][:beginning_date].split("to")
    { beginning_date: dates[0].strip, ending_date: dates[1].strip }
  end

end
