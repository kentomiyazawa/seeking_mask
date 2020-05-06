Rails.application.routes.draw do
  devise_for :users
  root to: 'masks#index'
  get  '/confirm',    to: 'masks#confirm'
  resources :masks
  resources :users, only: :show
end
