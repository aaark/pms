Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # devise_scope :user do
  #   root to: 'devise/sessions#new'
  # end
  resources :projects do
  	resources :todos
  end
end
