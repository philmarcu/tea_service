Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    namespace :v1 do
      resources :teas, only: [:index]
      resources :customers, only: [:subscriptions] do
        get '/subscriptions', to: 'customers#subscriptions'
      end
      resources :subscriptions, only: [:create, :destroy, :cancel] do
        get '/cancel', to: 'subscriptions#cancel'
      end
    end
  end
end
