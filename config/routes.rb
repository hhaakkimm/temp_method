Rails.application.routes.draw do
  devise_for :users
  resources :projects do
    resources :reviews
  end
  resources :users
  resources :revieweds do
    resources :ureviews
  end
  
  resources :messages, only: [:new, :create]
  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :reply
    end
    member do
      post :restore
    end
    collection do
      delete :empty_trash
    end
    member do
     post :mark_as_read
   end
  end

  get '/hello/there', to: 'hello#there'
  root to: 'pages#home'
  get "/pages/:page" => "pages#show"
  get "pages/profile/myprojects" => "projects#myprojects"
  delete "/relationships", to: "relationships#destroy"
  resources :relationships, only: [:create]
  delete "/friendships", to: "friendships#destroy"
  resources :friendships, only: [:create]
  get "/my_friends", to: "users#my_friends"
  get "/users" => "users#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
