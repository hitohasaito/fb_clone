Rails.application.routes.draw do
  resources :facebooks do
    collection do
    post :confirm
    end
  end
  resources :users
  resources :sessions
  root "users#new "
end
