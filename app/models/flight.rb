class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport"
  belongs_to :to_airport, class_name: "Airport"

  def self.get_departure_dates
    Flight.pluck(:departure_date).sort.map {|a| [a.to_date, a.strftime("%d/%m/%Y")]}.uniq
  end

end
