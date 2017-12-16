require 'httparty'
require 'json'

class GetWeatherByGeoCo
  include HTTParty

  base_uri 'https://api.openweathermap.org/'

  def initialize
    @apiKey = "&APPID=ce1b58eed961d2d51af4191edf133089"
  end

  def get_weather_geo_coordinates(lat,lon)
    @single_city = JSON.parse(self.class.get("/data/2.5/weather?lat=#{lat}&lon=#{lon}#{@apiKey}").body)
  end


end

x = GetWeatherByGeoCo.new
puts x.get_weather_geo_coordinates(35,139)
