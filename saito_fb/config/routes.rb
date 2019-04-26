Rails.application.routes.draw do
  resources :facebooks do
    collection do
    post :confirm
  resources :users
  resources :sessions
  end
end
end
