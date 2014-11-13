json.array!(@welcomes) do |welcome|
  json.extract! welcome, :id, :name, :email, :phone, :dob, :gender, :password, :confirm_password
  json.url welcome_url(welcome, format: :json)
end
