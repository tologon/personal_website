Rails.application.routes.draw do
  get 'admin/main'

  devise_for :users,
    skip: [:confirmations, :passwords, :registrations],
    controllers: { sessions: 'users/sessions' }
  devise_scope :user do
    get 'sign_in', to: 'users/sessions#new'
  end

  get   'pages/contact'
  get   'pages/home'
  root  'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
