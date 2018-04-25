Rails.application.routes.draw do
  # get '/' => 'home#index'
  root 'home#index'

  get 'utilities/get_stock' => 'utilities#get_stock'
  get 'utilities/show_stock' => 'utilities#show_stock'



  get 'utilities/stock' => 'utilities#stock'
  get 'utilities/weather'
  get 'utilities/lotto'
  get 'utilities' => 'utilities#index'

  get '/animals' => 'animals#index'
  get '/animals/cat' => 'animals#cat'
  get '/animals/dog' => 'animals#dog'
  get '/animals/firefox' => 'animals#firefox'

  get '/musics' => 'musics#index'
  get '/musics/1' => 'musics#music_1'
  get '/musics/2' => 'muscis#music_2'
end
