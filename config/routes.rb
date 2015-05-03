DailiesService::Application.routes.draw do

  devise_for :users, :controllers => {sessions: 'sessions', registrations: 'registrations'}, defaults: {format: 'json'}

  root to: 'static#index', defaults: {format: "json"}
  get '/v1', to: 'static#v1', defaults: {format: "json"}

  api_version(module: "V1", path: {value: "v1"}, defaults: {format: "json"}) do
    resources :tasks, only: [:index, :show, :create, :update, :destroy] do
      controller :completions do
        post 'completions/:date', to: 'completions#create'
        put 'completions/:date', to: 'completions#update'
      end
    end
  end

end
