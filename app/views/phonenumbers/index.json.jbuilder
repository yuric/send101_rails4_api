json.array!(@phonenumbers) do |phonenumber|
  json.extract! phonenumber, :person_id, :number, :phonetype_id, :description
  json.url role_url(phonenumber, format: :json)
end