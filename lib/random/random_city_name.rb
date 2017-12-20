require 'json'

class RandomCityName

  def get_random_city_by_name

    @json = File.read('iso_country_data.json')
    @json_parse = JSON.parse(@json)
    @json_parse[rand(@json_parse.length)]['CapitalName']


  end

end

# x = RandomCityName.new

# puts x.get_random_city_by_name
