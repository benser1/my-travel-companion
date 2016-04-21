class SearchesController < ApplicationController

  def foursquare
    @resp = Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      # req.params['client_id'] = client_id
      # req.params['client_secret'] = client_secret
      req.params['client_id'] = '11XT4KZISEOIM1TOXNMU5K4UE1YHRDLRGFIRV2LQBSD23DDU'
      req.params['client_secret'] = 'X30JWSQIESMYBIRITQMLBALXRCFA2Q0SVGMZWKMMVJMMZAIA'
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    body_hash = JSON.parse(@resp.body)
    @venues = body_hash["response"]["venues"]
  end

end #ends class
