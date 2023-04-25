Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  unauthenticated do
    root "users#index"
  end

  root 'groups#index', as: "moneytrack"

  resources :groups, only: [:index, :show, :new, :create, :destroy] do
    resources :money_tracks, only: [ :new, :show, :create, :destroy]
  end
end