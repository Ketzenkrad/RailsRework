Rails.application.routes.draw do
  root 'main#index', as: 'home'
  get 'about' => 'about#aboutme', as: 'about'
  resources :main
end
