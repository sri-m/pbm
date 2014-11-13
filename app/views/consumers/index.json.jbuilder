json.array!(@consumers) do |consumer|
  json.extract! consumer, :id, :name, :require_blood_group, :units_required, :email, :phone, :picked_date, :address
  json.url consumer_url(consumer, format: :json)
end
