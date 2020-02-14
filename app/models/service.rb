class Service < ActiveRecord::Base
    has_many :service_bookings

    has_many :events

	belongs_to :user
    validates :name, presence: true,
                    length: { minimum: 2 }

	def self.search(search)
		where("name LIKE ?", "%#{search}%")
		#where("description LIKE ?", "%#{search}%")
	end
end
