class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport"
  belongs_to :to_airport, class_name: "Airport"
  has_many :bookings
  has_many :passengers, through: :bookings

  def duration_interval
    ActiveSupport::Duration.build(duration)
  end


  def get_arrival_time
    departure_date.to_time - self.duration_interval
  end

  def self.get_departure_dates
    Flight.pluck(:departure_date).sort.map {|a| [a.to_date, a.strftime("%d/%m/%Y")]}.uniq
  end

end
