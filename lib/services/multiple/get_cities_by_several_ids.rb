require 'httparty'
require 'json'

class GetWeatherBySeveral_IDs
  include HTTParty

  base_uri 'https://api.openweathermap.org/'

  def initialize
    @apiKey = "&APPID=ce1b58eed961d2d51af4191edf133089"
  end

  def get_weather_by_several_ids(id,id2,id3)
    @single_city = JSON.parse(self.class.get("data/2.5/group?id=#{id},#{id2},#{id3}&units=metric").body)
  end
end

x = GetWeatherBySeveral_IDs.new
puts x.get_weather_by_several_ids(524901,703448,2643743)
