json.array!(@categories) do |category|
  json.extract! category, :id, :name, :urlname, :destinations
  json.url category_url(category, format: :json)
end
