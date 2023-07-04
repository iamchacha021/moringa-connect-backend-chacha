Rails.application.routes.draw do
  get 'sessions/create'
  get 'sessions/destroy'
  resources :donations
  resources :projects
  resources :events
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
