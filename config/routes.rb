Rails.application.routes.draw do
  devise_for :users#, :controllers => {omniauth_callbacks: 'omniauth_callbacks'}
  root to: "home#index"

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
	match 'auth/failure', to: redirect('/'), via: [:get, :post]
	match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
  # match '/users/:id/finish_signup' => 'users#fi nish_signup', via: [:get, :patch], :as => :finish_signup
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
