

class SearchesController < ApplicationController

  def foursquare_coffee
    @resp = Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      # req.params['client_id'] = client_id
      # req.params['client_secret'] = client_secret
      req.params['client_id'] = ENV["FOURSQUARE_API_ID"]
      req.params['client_secret'] = ENV['FOURSQUARE_API_SECRET']
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    body_hash = JSON.parse(@resp.body)
    @venues = body_hash["response"]["venues"]
  end

  def foursquare_restaurants
    # binding.pry
    @resp = Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      # req.params['client_id'] = client_id
      # req.params['client_secret'] = client_secret
      req.params['client_id'] = ENV["FOURSQUARE_API_ID"]
      req.params['client_secret'] = ENV['FOURSQUARE_API_SECRET']
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'restaurant'
    end
    body_hash = JSON.parse(@resp.body)
    @venues = body_hash["response"]["venues"]
  end

  # def foursquare_nightlife
  #   @resp = Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
  #     # req.params['client_id'] = client_id
  #     # req.params['client_secret'] = client_secret
  #     req.params['client_id'] = ENV["FOURSQUARE_API_ID"]
  #     req.params['client_secret'] = ENV['FOURSQUARE_API_SECRET']
  #     req.params['v'] = '20160201'
  #     req.params['near'] = params[:zipcode]
  #     req.params['query'] = 'restaurant'
  #   end
  #   body_hash = JSON.parse(@resp.body)
  #   @venues = body_hash["response"]["venues"]
  # end



end #ends class
