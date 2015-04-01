DailiesService::Application.routes.draw do

  api_version(module: "V1", path: {value: "v1"}, defaults: {format: "json"}) do
    resources :tasks, only: [:index, :show, :create, :update, :destroy] do
      resources :completions, only: [:index, :show, :update]
    end
  end
end
