class FlightsController < ApplicationController

  def flights
    @resp = Faraday.get 'https://api.sandbox.amadeus.com/v1.2/flights/low-fare-search' do |req|
      req.params['apikey'] = ENV['FLIGHT_API_ID']
      req.params['origin'] = params[:origin]
      req.params['destination'] = params[:destination]
      req.params['departure_date'] = params[:departure_date]
    end
    body_hash = JSON.parse(@resp.body)
    @flights = body_hash["results"]
  end

end #ends class
