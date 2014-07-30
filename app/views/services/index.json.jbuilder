json.array!(@services) do |service|
  json.extract! service, :id, :descricao, :valor
  json.url service_url(service, format: :json)
end
