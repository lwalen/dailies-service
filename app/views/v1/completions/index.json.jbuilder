json.array! @completions do |completion|
  json.id             completion.id
  json.task_id        completion.task_id
  json.complete       completion.complete?
  json.completed_at   completion.completed_at
  json.created_at     completion.created_at
  json.updated_at     completion.updated_at
  json.task_url       v1_task_url(completion.task)
  json.completion_url v1_task_completion_url(completion.task, completion)
end
