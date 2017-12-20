require 'httparty'
require 'json'

class GetCitiesByCycle
  include HTTParty

  base_uri 'https://api.openweathermap.org/'

  def initialize
    @apiKey = "&APPID=ce1b58eed961d2d51af4191edf133089"
  end

  def get_cities_by_cycle(lat,lon,cnt)
    @single_city =JSON.parse(self.class.get("data/2.5/find?lat=#{lat}&lon=#{lon}&cnt=#{cnt}#{@apiKey}").body)

  end


end

x = GetCitiesByCycle.new
puts x.get_cities_by_cycle('55.5','37.5','10')
