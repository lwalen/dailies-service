class V1::TasksController < V1::BaseController
   
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    if Task.create(name: params[:name], user: current_user)
      render json: 'success'
    else
      render json: 'failure'
    end
  end

  def update

  end

  def destroy

  end
end
