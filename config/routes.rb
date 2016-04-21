Rails.application.routes.draw do
  root to: 'application#home'

  get '/foursquare', to: 'searches#foursquare'
  post '/foursquare', to: 'searches#foursquare'

end
