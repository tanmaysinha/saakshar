Saakshar::Application.routes.draw do
  post '/login' => 'sessions#create', :as => :login
  get '/logout' => 'sessions#destroy', :as => :logout
  root :to => 'home#index'
end
