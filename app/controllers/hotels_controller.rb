class HotelsController < ApplicationController

  def hotels
    @resp = Faraday.get 'https://api.sandbox.amadeus.com/v1.2/hotels/search-airport' do |req|
      req.params['apikey'] = ENV['FLIGHT_API_ID']
      req.params['location'] = params[:location]
      req.params['check_in'] = params[:check_in]
      req.params['check_out'] = params[:check_out]
    end
    body_hash = JSON.parse(@resp.body)
    @hotels = body_hash["results"]
  end

end #ends class
