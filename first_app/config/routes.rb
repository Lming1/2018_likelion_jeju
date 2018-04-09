Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/' => 'home#index'
  root 'home#index'
  
  get '/animals' => 'animals#index'
  get '/animals/cat' => 'animals#cat'
  get '/animals/dog' => 'animals#dog'
  get '/animals/firefox' => 'animals#firefox'
  
  get '/musics' => 'musics#index'
  get '/musics/1' => 'musics#music_1'
  get '/musics/2' => 'muscis#music_2'
end
