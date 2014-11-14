json.array!(@charges) do |charge|
  json.extract! charge, :id, :amount, :unique_code, :paid, :refunded
  json.url charge_url(charge, format: :json)
end
