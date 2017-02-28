Rails.application.routes.draw do
  
  root 'products#index'

  get 'admin', :to => 'access#menu'
  get 'access/main'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'
  get 'listings/all'

  resources :admin_users, :except => [:show] do
    member do
      get :delete
    end
  end

  resources :products do
    member do
      get :delete
    end
  end
  
  resources :listings do
    member do
      get :delete
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
