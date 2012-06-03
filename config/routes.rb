Saakshar::Application.routes.draw do
  post '/login' => 'sessions#create', :as => :login
  get '/logout' => 'sessions#destroy', :as => :logout
  match '/auth/:provider/callback', :to => 'sessions#create'
  
  root :to => 'home#index'
end
