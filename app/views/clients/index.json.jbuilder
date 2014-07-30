json.array!(@clients) do |client|
  json.extract! client, :id, :nome, :endereco, :bairro, :cidade, :uf, :cep, :tel
  json.url client_url(client, format: :json)
end
