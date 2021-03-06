Rails.application.routes.draw do
  get 'movies/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists, only: [:index, :show, :new, :create, :destroy] do
    resources :bookmarks, only: [:new, :create,]
  end
  resources :bookmarks, only: [:destroy]
  resources :movies, only: [:index]
end
