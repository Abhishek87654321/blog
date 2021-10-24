# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users
  root 'users#new'
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # # root "articles#index"
  # #   resources :articles do
  # #   resources :comments
  # end
end
