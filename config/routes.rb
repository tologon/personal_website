Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  devise_scope :user do
    get 'sign_in', to: 'users/sessions#new'
  end
  get   'pages/contact'
  get   'pages/resume_pdf'
  get   'pages/home'
  root  'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
