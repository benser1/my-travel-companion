Rails.application.routes.draw do
  devise_for :users
  resources :welcome
  root to: 'welcome#index'

  get '/foursquare', to: 'searches#foursquare'
  post '/foursquare', to: 'searches#foursquare'

end
