Rails.application.routes.draw do
  root 'post#index'

  get '/new' => 'post#new'
  post '/create' => 'post#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
