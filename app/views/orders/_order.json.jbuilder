json.extract! order, :id, :user_id, :product_id, :quantity, :total, :created_at, :updated_at
json.url order_url(order, format: :json)