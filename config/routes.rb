Rails.application.routes.draw do
  resources :post_categories
  namespace :api do
    namespace :v1 do
      resources :sale_categories, :sale_posts, :post_categories, :users
      # resources :users, only: %i[create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
  # resources :sale_categories
  # resources :sale_posts
  # resources :users
  #add our register route
  # post 'auth/register', to: 'users#register'
  # get 'test', to: 'users#test'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
