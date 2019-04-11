Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      # root 'welcome#index'
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      post '/users', to: 'users#create'
      # mount ActionCable.server => '/'
      mount ActionCable.server => '/cable'
    end
  end
end

# resources :users, only: [:create, :index]
