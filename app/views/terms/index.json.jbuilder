json.array!(@terms) do |term|
  json.extract! term, :id, :agreement
  json.url term_url(term, format: :json)
end
