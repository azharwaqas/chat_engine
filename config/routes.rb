Rails.application.routes.draw do
  devise_for :super_admins, path: 'superAdmins'
  get 'dashboard/home'
  root to: 'pages#home'
  devise_for :users, path: 'users'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
