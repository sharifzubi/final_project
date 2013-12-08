FinalProject::Application.routes.draw do

  devise_for :users

  root to: "home#index" # req for devise config

end
