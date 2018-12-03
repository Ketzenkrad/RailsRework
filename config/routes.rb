Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :posts
  resources :main

  root 'main#index', as: 'home'

  get 'about' => 'about#aboutme', as: 'about'
  get '/main(/:hello)', to: 'main#index'
  get 'posts/page/(:page(.:format))', to: 'posts#index'

end
