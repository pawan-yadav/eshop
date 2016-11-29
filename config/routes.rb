Rails.application.routes.draw do
  resources :orders
  get 'dashboard/home'
  get 'dashboard/about'
  get 'dashboard/contact'

  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: 'dashboard#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
