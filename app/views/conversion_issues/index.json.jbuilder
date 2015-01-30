json.array!(@conversion_issues) do |conversion_issue|
  json.extract! conversion_issue, :id, :conversion_id, :issue_id, :comment
  json.url conversion_issue_url(conversion_issue, format: :json)
end
