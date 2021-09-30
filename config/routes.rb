Rails.application.routes.draw do
  devise_for :admins
  root 'main#home'
end
