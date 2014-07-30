json.array!(@parts) do |part|
  json.extract! part, :id, :descricao, :modelo, :p_compra, :p_venda, :quantidade, :, :lucro
  json.url part_url(part, format: :json)
end
