Rails.application.routes.draw do
  get 'movies/index'
  get 'bookmarks/new'
  resources :lists, only: [:index, :show, :new, :create ] do
    resources :bookmarks, only: [ :new, :create, :destroy]
  end
  resources :movies, only: [:index]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
