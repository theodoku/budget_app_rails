Rails.application.routes.draw do
  devise_for :user
  resources :expense_groups
  resources :groups, only: [:index, :create, :new, :destroy] do
  resources :expenses
  end
  resources :users
 
  root "home#index"
  get '/success-page', to: 'groups#index'
end