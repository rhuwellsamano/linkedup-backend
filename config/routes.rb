Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :index]
      # root 'welcome#index'
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      # mount ActionCable.server => '/'
      mount ActionCable.server => '/cable'
    end
  end
end
