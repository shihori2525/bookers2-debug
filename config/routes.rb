Rails.application.routes.draw do
  root 'homes#top'
  get 'home/about' => 'homes#about'
  devise_for :users

  resources :users,only: [:show,:index,:edit,:update]
  resources :books,only:[:create,:index,:show,:edit,:update,:dest]
end