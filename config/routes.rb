Rails.application.routes.draw do
  root "home#index"
  get "about/index", to: "about#index"
  get "houses/index", to: "houses#index"
  get "contribute/index", to: "contribute#index"
  resources :users, only: %i[index]
  resources :employers, only: %i[index]
  resources :events, only: %i[index]
  resources :documentation, only: %i[index]
  resources :resources, only: %i[index]
  resources :collaboration, only: %i[index]
end
