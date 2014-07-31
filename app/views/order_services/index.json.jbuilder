json.array!(@order_services) do |order_service|
  json.extract! order_service, :id, :client_id, :part_id, :service_id
  json.url order_service_url(order_service, format: :json)
end
