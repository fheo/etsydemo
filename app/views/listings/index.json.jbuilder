json.array!(@listings) do |listing|
  json.extract! listing, :id, :name, :description, :proce
  json.url listing_url(listing, format: :json)
end
