Rails.application.routes.draw do

  root 'home#index'

  devise_for :users

  resources :categories, only: [:show]

  resources :boards

  resources :boards, only: [:show] do
    resources :responses, only: [:create]
  end
end