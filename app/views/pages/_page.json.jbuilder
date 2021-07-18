json.extract! page, :id, :url, :product_id, :image_url, :price, :description, :created_at, :updated_at
json.url page_url(page, format: :json)
