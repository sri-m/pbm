json.array!(@available_stocks) do |available_stock|
  json.extract! available_stock, :id, :type, :units, :price
  json.url available_stock_url(available_stock, format: :json)
end
