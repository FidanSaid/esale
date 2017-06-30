json.extract! sale, :id, :title, :description, :date, :address_map, :latitude, :longitude, :created_at, :updated_at
json.url sale_url(sale, format: :json)
