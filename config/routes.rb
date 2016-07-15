Rails.application.routes.draw do
  
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }
  resources :posts do
  	resources :comments
  end

  #devise_scope :user do
  #	delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session	
  #end
  
  root "posts#index"

  #match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup

  get '/about', to: 'pages#about'
end
