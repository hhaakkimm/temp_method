Rails.application.routes.draw do
  devise_for :users
  resources :projects
  resources :users
  root to: 'projects#index'
  get "/pages/:page" => "pages#show"
  get "pages/profile/myprojects" => "projects#myprojects"
  delete "/relationships", to: "relationships#destroy"
  resources :relationships, only: [:create]
  get "/users" => "users#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
