class SlotMachine
	# 0000-2359 for start and end, slot break_time in minutes
	def initialize start_time, end_time, slot, break_time
		@start_time = start_time / 100 * 60 + start_time % 100
		@end_time = end_time / 100 * 60 + end_time % 100
		@slot = slot
		@break_time = break_time
	end
	def slots
		list = []
		temp = @start_time
		while temp < @end_time
			if (temp + @slot) <= @end_time
				f = temp + @slot		
			else
				f = @end_time
			end
			item = (min2time temp)+"-"+(min2time f)
			list.push(item)
			temp = temp + @slot + @break_time
		end
		return list
	end
	private
		def min2time mins
			date=""
			hour = mins / 60
			minute = mins % 60
			if hour < 10 then date += "0#{hour}" else date += hour.to_s end
			if minute < 10 then date += ":0#{minute}" else date += ":#{minute}" end
			return date
		end
end