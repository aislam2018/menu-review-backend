
Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      resources :restaurants, only: [:index]
      resources :categories, only: [:index]
      resources :users
      resources :items do
        resources :comments


      end
    end
  end
end
