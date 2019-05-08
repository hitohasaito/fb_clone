Rails.application.routes.draw do
  resources :facebooks do
    collection do
    post :confirm
    end
  end
  resources :users
  root 'users#new' 
  resources :sessions
end
