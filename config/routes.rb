Rails.application.routes.draw do
  resources :posts
  use_doorkeeper
  devise_for :owners
  devise_for :admins
  devise_for :users
  namespace :api do
    resources :posts, only: %i[index]
  end
end
