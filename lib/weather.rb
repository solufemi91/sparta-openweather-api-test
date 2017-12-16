require_relative'services/single/by_city_id_service'
require_relative'services/single/by_city_name_service'
require_relative'services/single/by_geographic_co_service'
require_relative'services/single/by_zipcode_service'

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

end
