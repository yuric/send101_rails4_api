json.array!(@phonetypes) do |phonetype|
  json.extract! phonetype, :name, :description
  json.url phonetype_url(phonetype, format: :json)
end
