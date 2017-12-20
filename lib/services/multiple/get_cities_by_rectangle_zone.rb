require 'httparty'
require 'json'

class GetCitiesByRectangleZone
  include HTTParty

  base_uri 'https://api.openweathermap.org/'

  def initialize
    @apiKey = "&APPID=ce1b58eed961d2d51af4191edf133089"
  end

  def get_cities_by_rectangle_zone(num1,num2,num3,num4,num5)
    @single_city = JSON.parse(self.class.get("data/2.5/box/city?bbox=#{num1},#{num2},#{num3},#{num4},#{num5}#{@apiKey}").body)
  end


end

x = GetCitiesByRectangleZone.new
puts x.get_cities_by_rectangle_zone('12','32','15','37','10')
