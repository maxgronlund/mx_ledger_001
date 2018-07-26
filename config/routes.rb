Rails.application.routes.draw do

  resources :permissions
  resources :users
  namespace :api do
    namespace :v1 do
      resources :users, only: [:show, :index, :create]
      resources :user_by_uuid, only: [:show]
      resources :user_by_email, only: [:show]
      resources :user_by_public_key, only: [:show]
      resources :permissions, only: [:show, :create]

    end
  end
  namespace :system do
    get 'admin/index'
  end
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

end
