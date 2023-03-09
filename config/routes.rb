Rails.application.routes.draw do
  root 'lists#index'
  resources :lists, only: %i[index show new create] do
    resources :bookmarks, only: %i[new create]
    resources :movies, only: %i[show]
  end
end
