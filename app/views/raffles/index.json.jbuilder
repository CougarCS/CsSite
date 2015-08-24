json.array!(@raffles) do |raffle|
  json.extract! raffle, :id, :member_id, :date, :points
  json.url raffle_url(raffle, format: :json)
end
