Rails.application.routes.draw do
  devise_for :admins
  root 'employees#index'
  
  resources :employees
end
