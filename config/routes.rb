Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  get 'home/about' => 'homes#about', as: 'about'
  get 'search' => 'searches#search'
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
  
end