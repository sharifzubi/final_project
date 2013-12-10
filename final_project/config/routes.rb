FinalProject::Application.routes.draw do

  devise_for :users
  # :controllers => { :registrations => 'users/registrations' }
  # careful! call devise_for once only and do it before resource users!

  root to: "home#index" # req for devise config

  resources :users

  #nested routes
  # , except: [:index, :edit, :update]
  resources :photos do
    resources :memories
  end

  get   'dashboard',          :to => "users#dashboard"
  # get   'google_map',          :to => "users#google_map"
end
