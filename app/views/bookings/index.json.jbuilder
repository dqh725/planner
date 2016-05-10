json.array!(@bookings) do |booking|
  json.extract! booking, :id, :name, :phone, :note, :date, :status, :slot
  json.url booking_url(booking, format: :json)
end
