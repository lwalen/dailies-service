class V1::TasksController < V1::BaseController
   
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end
end
