class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.bigint :from_airport_id
      t.bigint :to_airport_id
      t.datetime :departure_date
      t.integer :duration
      t.timestamps
    end
  end
end
