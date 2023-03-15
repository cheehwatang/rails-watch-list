Rails.application.routes.draw do
  devise_for :users
  
  root 'lists#index'
  resources :lists, only: %i[index show new create] do
    resources :bookmarks, only: %i[create]
    resources :movies, only: %i[show]
    resources :reviews, only: %i[create]
  end
  resources :bookmarks, only: %i[destroy]
end
