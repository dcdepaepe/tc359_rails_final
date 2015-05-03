json.array!(@band_collections) do |band_collection|
  json.extract! band_collection, :id, :band_name, :number_of_albums, :seen_in_concert
  json.url band_collection_url(band_collection, format: :json)
end
