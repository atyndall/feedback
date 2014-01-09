json.array!(@responses) do |response|
  json.extract! response, :id, :name, :email, :details, :category_id
  json.url response_url(response, format: :json)
end
