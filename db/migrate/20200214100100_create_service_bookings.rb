class CreateServiceBookings < ActiveRecord::Migration
  def change
    create_table :service_bookings do |t|
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.integer :service_id

      t.timestamps null: false
    end
  end
end
