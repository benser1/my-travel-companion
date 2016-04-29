Rails.application.routes.draw do
  root to: 'application#home'

  get '/foursquare', to: 'searches#foursquare'
  post '/foursquare', to: 'searches#foursquare'

  get '/flights', to: 'flights#flights'
  post '/flights', to: 'flights#flights'

end
