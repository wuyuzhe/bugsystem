Rails.application.routes.draw do
  resources :bugtypes

  resources :users
  resources :session
  resources :codebugs
  resources :reg
  get "signin", to: "session#new"
  get "signout", to: "session#destroy"

  get "/show/:id" , to: "index#show"
  root "index#index"
end
