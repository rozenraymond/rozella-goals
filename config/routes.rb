Rails.application.routes.draw do
  root 'pages#home'
  #Session
  get "/login" => "session#new", :as => 'login'
  post "/login" => "session#create"
  delete "/login" => "session#destroy"

  # Home
  get '/home' => 'pages#home'

  #Dashboard
  get '/dashboards' => 'dashboards#index'

  get "/users/edit" => 'users#edit', :as => 'edit_user'

  get "/search" => 'dashboards#search'

  resources :users, :except => [:edit] do
    member do
      get :following, :followers
    end
  end

  get "/users/:id/follow" => "users#follow", :as => 'follow_user'
  resources :relationships, only: [:create, :destroy]

  resources :goals do
    resources :steps
  end

end
