json.array! @completions do |completion|
  json.id             completion.id
  json.available_on   completion.available_on
  json.complete       completion.complete?
  json.completion_url v1_task_completion_url(completion.task, completion)
end
