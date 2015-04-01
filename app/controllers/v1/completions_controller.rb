class V1::CompletionsController < V1::BaseController

  def index
    @completions = Task.find(params[:task_id]).completions
  end

  def show
    @completion = Completion.find(params[:id])
  end

  def update

  end
end
