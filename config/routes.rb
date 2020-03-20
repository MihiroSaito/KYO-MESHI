Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  resources :users, only: [:edit, :update]
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :group_dates, only: [:index, :new, :create]
    resources :posts
  end
  
end
