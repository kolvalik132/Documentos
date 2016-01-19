json.array!(@has_clauses) do |has_clause|
  json.extract! has_clause, :id, :user_id, :clause_id, :seleccionada
  json.url has_clause_url(has_clause, format: :json)
end
