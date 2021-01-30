json.extract! donation, :id, :name, :amount, :created_at, :updated_at
json.url donation_url(donation, format: :json)
