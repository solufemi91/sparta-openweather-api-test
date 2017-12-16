require 'httparty'
require 'json'

class GetWeatherByCityId
  include HTTParty

  base_uri 'https://api.openweathermap.org/'

  def initialize
    @apiKey = "&APPID=ce1b58eed961d2d51af4191edf133089"
  end

  def get_weather_by_city_id(id)
    @single_city = JSON.parse(self.class.get("/data/2.5/weather?id=#{id}#{@apiKey}").body)
  end
end
