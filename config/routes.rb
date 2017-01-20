Rails.application.routes.draw do
  get   'pages/contact'
  get   'pages/resume_pdf'
  get   'pages/home'
  root  'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
