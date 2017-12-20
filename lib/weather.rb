require_relative'services/single/by_city_id_service'
require_relative'services/single/by_city_name_service'
require_relative'services/single/by_geographic_co_service'
require_relative'services/single/by_zipcode_service'
require_relative'random/random_city_id'
require_relative'random/random_city_name'

class Weatherio
  def single_id
    GetWeatherByCityId.new
  end

  def single_name
    GetWeatherByCityName.new
  end

  def single_geographic
    GetWeatherByGeoCo.new
  end

  def single_zipcode
    GetWeatherByZipCode.new
  end

  def random_city_id
    RandomCityId.new
  end

  def random_city_name
    RandomCityName.new
  end

end
