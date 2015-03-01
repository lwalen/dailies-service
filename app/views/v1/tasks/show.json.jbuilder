json.id              @task.id
json.user_id         @task.user_id
json.name            @task.name
json.created_at      @task.created_at
json.updated_at      @task.updated_at
json.completions_url v1_task_completions_url(@task)
