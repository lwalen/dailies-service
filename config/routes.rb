DailiesService::Application.routes.draw do

  root to: 'static#index', defaults: {format: "json"}
  get '/v1', to: 'static#v1', defaults: {format: "json"}

  api_version(module: "V1", path: {value: "v1"}, defaults: {format: "json"}) do
    resources :tasks, only: [:index, :show, :create, :update, :destroy] do
      resources :completions, only: [:index, :show, :update]
    end
  end

end
