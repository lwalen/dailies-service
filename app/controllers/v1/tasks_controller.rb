class V1::TasksController < V1::BaseController

  def index
    @tasks = current_user.tasks
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    if Task.create(name: params[:task][:name], user: current_user)
      render json: success, status: :created
    else
      render json: failure
    end
  end

  def update
    task = Task.find(params[:task][:id])

    if task.update(name: params[:task][:name])
      render json: success
    else
      render json: failure
    end
  end

  def destroy
    begin
      task = Task.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      render json: failure("That task does not exist."), status: :not_found
      return
    end

    unless task.user_id != current_user.id
      render json: failure("That action is forbidden."), status: :forbidden
      return
    end

    if task.delete
      render json: success
    else
      render json: failure("The task could not be deleted.")
    end
  end
end
