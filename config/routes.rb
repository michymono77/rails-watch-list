Rails.application.routes.draw do
  resources :lists, only: [:index, :show, :new, :create,:destroy ] do
    resources :bookmarks, only: [ :new, :create, :destroy]
  end
  resources :movies, only: [:index]

  root to: "movies#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
