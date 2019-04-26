Rails.application.routes.draw do
  resources :facebooks do
  collection do
    post :confirm
  resources :users, only:[:new,:create,:show]
  end
  end
end
