json.array!(@names) do |name|
  json.extract! name, :id, :beginning_year, :ending_year
  json.url name_url(name, format: :json)
end
