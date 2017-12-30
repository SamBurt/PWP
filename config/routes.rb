Rails.application.routes.draw do
  get 'page/index'

  resources :page
  resources :post

  get '/post' => 'post#index'
  get '/post/new' => 'post#new'
  post '/posts' => 'post#create'

  root 'page#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
