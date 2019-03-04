
Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      resources :restaurants, only: [:index]
      resources :categories, only: [:index]
      resources :users, only: [:create]
        post '/login', to: 'auth#create'
        get '/profile', to: 'users#profile'

      resources :items do
        resources :comments


      end
    end
  end
end
