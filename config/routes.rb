Rails.application.routes.draw do
  get '/home' => 'welcome#home'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
resources :users, only: [:new, :create, :show]


end
