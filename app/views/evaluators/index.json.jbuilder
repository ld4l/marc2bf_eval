json.array!(@evaluators) do |evaluator|
  json.extract! evaluator, :id, :initials, :last_name, :first_name
  json.url evaluator_url(evaluator, format: :json)
end
