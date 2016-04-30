Rails.application.routes.draw do
  devise_for :users
  resources :welcome
  root to: 'welcome#index'

  get '/foursquare_coffee', to: 'searches#foursquare_coffee'
  post '/foursquare_coffee', to: 'searches#foursquare_coffee'

  get '/foursquare_restaurants', to: 'searches#foursquare_restaurants'
  post '/foursquare_restaurants', to: 'searches#foursquare_restaurants'

  get '/flights', to: 'flights#flights'
  post '/flights', to: 'flights#flights'

end
