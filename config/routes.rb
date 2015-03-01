DailiesService::Application.routes.draw do

  api_version(:module => "V1", :path => {:value => "v1"}, :defaults => {:format => "json"}) do
    resources :tasks do
      resources :completions
    end
  end
end
