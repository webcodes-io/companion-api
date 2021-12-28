Rails.application.routes.draw do
  resources :users
  root "home#home_page"
  get "about", to: "about#about_page"
end
