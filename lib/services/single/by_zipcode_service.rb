require 'httparty'
require 'json'

class GetWeatherByZipCode
  include HTTParty

  base_uri 'https://api.openweathermap.org/'

  def initialize
    @apiKey = "&APPID=ce1b58eed961d2d51af4191edf133089"
  end

  def get_weather_zip_coordinates(zip_code,country_code)
    @single_city = JSON.parse(self.class.get("/data/2.5/weather?zip=#{zip_code},#{country_code}#{@apiKey}").body)
  end
end

x = GetWeatherByZipCode.new
puts x.get_weather_zip_coordinates('94040','us')
