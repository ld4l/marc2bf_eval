json.array!(@conversions) do |conversion|
  json.extract! conversion, :id, :marc, :bf
  json.url conversion_url(conversion, format: :json)
end
