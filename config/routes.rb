Rails.application.routes.draw do
  devise_for :users
  resources :projects
  resources :users
  root to: 'pages#home'
  get "/pages/:page" => "pages#show"
  get "pages/profile/myprojects" => "projects#myprojects"
  delete "/relationships", to: "relationships#destroy"
  resources :relationships, only: [:create]
  delete "/friendships", to: "friendships#destroy"
  resources :friendships, only: [:create]
  get "/my_friends", to: "users#my_friends"
  get "/requset", to: "users#requset"
  get "/users" => "users#index"
  resources :conversations do
    resources :messages
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
