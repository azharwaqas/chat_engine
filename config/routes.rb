Rails.application.routes.draw do
  get 'user/user_panel'
  devise_for :super_admins, path: 'superAdmins'
  get 'dashboard/home'
  get 'dashboard/index'
  get 'dashboard/destroy'
  root to: 'pages#home'
  devise_for :users, path: 'users'
  
  resources :conversations do
    resources :messages
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
