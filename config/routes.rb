Rails.application.routes.draw do
  resources :trips
  resources :users
  root "home#home_page"
  get "about", to: "about#about_page"
  get "login", to: "session#new"
  post "login", to: "session#create"
  get "logout", to: "session#destroy"
  delete "logout", to: "session#destroy"
end
