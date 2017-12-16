require 'httparty'
require 'json'

class GetWeatherByCityName
  include HTTParty

  base_uri 'https://api.openweathermap.org/'

  def initialize
    @apiKey = "&APPID=ce1b58eed961d2d51af4191edf133089"
  end

  def get_weather_by_city_name(name)
    @single_city =JSON.parse(self.class.get("/data/2.5/weather?q=#{name}#{@apiKey}").body)

  end
end


test2 = GetWeatherByCityName.new
puts test2.get_weather_by_city_name("London")
