class FlightsController < ApplicationController

  def index
    @flights = Flight.where("from_airport_id = ? AND to_airport_id = ? AND CAST(departure_date AS DATE) = ?", params[:from_airport], params[:to_airport], params[:departure_date])
  end
end
