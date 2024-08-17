Rails.application.routes.draw do
  root "home#index"
  get "about/index", to: "about#index"
  get "houses/index", to: "houses#index"
  resources :users, only: %i[index]
end
