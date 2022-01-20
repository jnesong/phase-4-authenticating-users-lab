Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  delete "/logout", to: "sessions#destroy"
  post "/login", to: "sessions#create"
  get "/me", to: "users#show"
end
