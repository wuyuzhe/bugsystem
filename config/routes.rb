Rails.application.routes.draw do
  resources :users
  resources :session
  resources :codebugs
  resources :reg
  get "signin", to: "session#new"
  get "signout", to: "session#destroy"
  root "codebugs#index"
end
