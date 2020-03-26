class ExpensesController < ApplicationController
  	def index
	  	@events = Event.all
	  	@venues = Venue.all
	  	@event_bookings = EventBooking.all
	  	@venue_bookings = VenueBooking.all
	end

	private

	def event_params
		params[:event].permit(:name, :description, :venue_id, :city_id, :start_datetime, :end_datetime, :entry_fee, :status, :locality_id, :tickets_left, :avatar, category_ids: [])
	end

	def venue_params
		params[:venue].permit(:name, :locality_id, :address, :user_id, :price, :seats, :avatar)
	end

	def venue_booking_params
		params[:venue_booking].permit(:start_datetime, :end_datetime, :venue_id, :event_id)
	end

	# def set_venue_booking
 #      @venue_booking = VenueBooking.find(params[:id])
 #    end

	# Use callbacks to share common setup or constraints between actions.
    def set_event_booking
      	@event_booking = EventBooking.find(params[:id])
    end

    def set_venue_booking
      	@venue_booking = VenueBooking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_booking_params
  		params.require(:event_booking).permit(:event_id, :user_id, :tickets, :total_price)
    end
end
