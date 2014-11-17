json.array!(@hotels) do |hotel|
  json.extract! hotel, :id, :name, :address, :phone
  json.url hotel_url(hotel, format: :json)
end
