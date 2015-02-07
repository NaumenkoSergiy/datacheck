json.array!(@code_types) do |code_type|
  json.extract! code_type, :id
  json.url code_type_url(code_type, format: :json)
end
