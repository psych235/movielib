Rails.application.routes.draw do
  get 'users/index'

  get 'users/new'

  get 'users/create'

  get 'users/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome/index'

  resources :movies
  resources :directors
  resources :genres
  resources :tags

  root 'welcome#index'

  # Default route
  match '/:controller(/:action(/:id))', via: [:get, :post, :patch, :delete]
end
