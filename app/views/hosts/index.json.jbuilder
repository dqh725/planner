json.array!(@hosts) do |host|
  json.extract! host, :id, :name, :password, :phone, :description, :job
  json.url host_url(host, format: :json)
end
