class ServiceBookingsController < ApplicationController

	def index

	end

	def new
		@service_booking = ServiceBooking.new
	end

	def create
		@service_booking = ServiceBooking.new(service_booking_params)
		if @service_booking.save
			redirect_to service_path(@service_booking.service_id), notice: "Booked successfully!"
		else
			redirect_to service_path(@service_booking.service_id), notice: "Date slot not available. Booking failed!"
		end
	end

	private

	def service_booking_params
		params[:service_booking].permit(:start_datetime, :end_datetime, :service_id, :event_id)
	end
end
