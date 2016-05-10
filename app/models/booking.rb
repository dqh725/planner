class Booking < ActiveRecord::Base

	def within_days n
		today = Date.today
		return (Date.parse(self.date) - today).to_i < n
	end

	def match date, slot
		return self.date==date && slot==self.slot
	end

	def self.find_date date
		@bookings = Booking.where(:date=> date)
		list=[]
		@bookings.each do |booking|
			list.push(booking.slot)
		end
		return list.uniq
	end


end
