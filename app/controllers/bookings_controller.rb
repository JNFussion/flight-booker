class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end


  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new
    params[:number_tickets].to_i.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      flash[:notice] = "Flight has been booked successfully"
      redirect_to booking_path(@booking)
    else
      @flight = Flight.find(params[:booking][:flight_id])
      flash[:alert] = "Somethind went wrong"
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :name, :email])
  end

end
