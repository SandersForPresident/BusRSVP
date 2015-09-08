class CreateTripsAndReservations < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name
      t.string :description
      t.integer :passenger_limit

      t.integer :host_id

      t.timestamps null: false
    end

    create_table :reservations do |t|
      t.integer :trip_id
      t.integer :passenger_id

      t.timestamps null: false
    end
  end
end
