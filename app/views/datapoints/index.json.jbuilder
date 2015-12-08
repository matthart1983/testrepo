json.array!(@datapoints) do |datapoint|
  json.extract! datapoint, :id, :value, :interval
  json.url datapoint_url(datapoint, format: :json)
end
