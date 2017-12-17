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

  def get_coord
    @single_city['coord']
  end

  def get_coord_lon
    get_coord['lon']
  end

  def get_coord_lat
    get_coord['lat']
  end

  def get_weather
    @single_city['weather']
  end

  def get_weather_id
    get_weather[0]['id']
  end

  def get_weather_main
    get_weather[0]['main']
  end

  def get_weather_description
    get_weather[0]['description']
  end

  def get_weather_icon
    get_weather[0]['icon']
  end

  def get_base
    @single_city['base']
  end

  def get_main
    @single_city['main']
  end

  def get_main_temp
    get_main['temp']
  end

  def get_main_pressure
    get_main['pressure']
  end

  def get_main_humidity
    get_main['humidity']
  end

  def get_main_temp_min
    get_main['temp_min']
  end

  def get_main_temp_max
    get_main['temp_max']
  end

  def get_main_sea_level
    get_main['sea_level']
  end

  def get_main_grnd_level
    get_main['grnd_level']
  end

  def get_visibility
    @single_city['visibility']
  end

  def get_wind
    @single_city['wind']
  end

  def get_wind_speed
    get_wind['speed']
  end

  def get_wind_deg
    get_wind['deg']
  end

  def get_clouds
    @single_city['clouds']
  end

  def get_clouds_all
    get_clouds['all']
  end

  def get_dt
    @single_city['dt']
  end

  def get_sys
    @single_city['sys']
  end

  def get_sys_type
    get_sys['type']
  end

  def get_sys_id
    get_sys['id']
  end

  def get_sys_message
    get_sys['message']
  end

  def get_sys_country
    get_sys['country']
  end

  def get_sys_sunrise
    get_sys['sunrise']
  end

  def get_sys_sunset
    get_sys['sunset']
  end

  def get_id
    @single_city['id']
  end

  def get_name
    @single_city['name']
  end

  def get_cod
    @single_city['cod']
  end





end


x = GetWeatherByCityName.new
 puts x.get_weather_by_city_name("Abuja")
 # puts x.get_weather_by_city_name("London")
# puts x.get_cod
