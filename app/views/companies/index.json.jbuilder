json.array!(@companies) do |company|
  json.extract! company, :id, :name, :address, :about, :twitter, :linkedin, :instagram, :perks, :ceo
  json.url company_url(company, format: :json)
end
