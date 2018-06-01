Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :posts
      end
      resources :session, only: :create
    end
  end
end
