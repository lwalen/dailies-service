json.array! @tasks do |task|
  json.task do
    json.id              task.id
    json.name            task.name
    json.start_date      task.created_at.to_date
    json.completions task.completions do |completion|
      json.complete completion.complete?
      json.date     completion.available_on
    end
  end
end
