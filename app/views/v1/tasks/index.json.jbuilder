json.array! @tasks do |task|
  json.task do
    json.id              task.id
    json.name            task.name
    json.task_url        v1_task_url(task)
  end
end
