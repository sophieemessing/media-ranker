Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "works#top"
  resources :works
  get "/users/current", to: "users#current", as: "current_user"
  resources :users, only:[:index, :show]
  resources :votes, only:[:destroy]

  get 'works/top', to: 'works#top', as: 'top_works'

  post 'works/:work_id/upvote', to: 'votes#upvote', as: 'upvote'

  get "/login", to: "users#login_form", as: "login"
  post "/login", to: "users#login"
  post "/logout", to: "users#logout", as: "logout"


end
