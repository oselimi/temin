Rails.application.routes.draw do
  root to: 'static_pages#home'
  get 'contact', to:'static_pages#contact'
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  resources :reservations
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
