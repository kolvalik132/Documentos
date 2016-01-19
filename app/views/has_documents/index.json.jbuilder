json.array!(@has_documents) do |has_document|
  json.extract! has_document, :id, :user_id, :document_id
  json.url has_document_url(has_document, format: :json)
end
