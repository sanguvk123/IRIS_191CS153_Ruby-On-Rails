json.extract! product, :id, :name, :description, :starting_bid, :deadline, :contact, :image, :created_at, :updated_at
json.url product_url(product, format: :json)
