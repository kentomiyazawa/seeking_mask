Rails.application.routes.draw do
  devise_for :users
  root to: 'masks#home'
  get  '/confirm',    to: 'masks#confirm'
  get  '/home',    to: 'masks#home'
  get  '/question',    to: 'masks#question'
  resources :masks
  resources :users, only: :show
end
