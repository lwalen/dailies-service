json.completion
  json.id             @completion.id
  json.available_on   @completion.available_on
  json.complete       @completion.complete?
  json.completed_at   @completion.completed_at
  json.created_at     @completion.created_at
  json.updated_at     @completion.updated_at
end
