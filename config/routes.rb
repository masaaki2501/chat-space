Rails.application.routes.draw do
  devise_for :users
  root 'groups#index'
  resources :users, only: [:edit, :update]
<<<<<<< Updated upstream
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
  end
=======
  resources :groups, only: [:index, :new, :create, :edit, :update]
>>>>>>> Stashed changes
end