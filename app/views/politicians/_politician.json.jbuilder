json.extract! politician, :id, :last_name, :first_name, :middle_name, :nickname, :full_name, :birthday, :type, :state, :party, :url, :address, :phone, :contact_form, :created_at, :updated_at
json.url politician_url(politician, format: :json)
