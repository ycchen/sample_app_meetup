Rails.application.routes.draw do
  resources :memberships
  resources :groups
  resources :roles
  resources :users do
    collection { post :import}
  end
  root to: 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
