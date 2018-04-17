Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }
  
  root to: "home#index"
  get "/groups/new", to: "groups#new"
  post "/groups/new", to: "groups#create"
  get "/groups", to: "groups#index"
  get "/groups/join", to: "groups#join"
  get "/groups/:id", to: "groups#show"
  get "/profiles/new", to: "profiles#new"
  post "/profiles/new", to: "profiles#create"
  get "/profiles/:id", to: "profiles#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
