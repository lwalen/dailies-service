json.array! @tasks do |task|
  json.id              task.id
  json.user_id         task.user_id
  json.name            task.name
  json.created_at      task.created_at
  json.updated_at      task.updated_at
  json.task_url        v1_task_url(task)
  json.completions_url v1_task_completions_url(task)
end
