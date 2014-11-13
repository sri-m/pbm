json.array!(@donors) do |donor|
  json.extract! donor, :id, :name, :blood_group, :age, :date_to_donate, :gender, :email, :phone, :address
  json.url donor_url(donor, format: :json)
end
