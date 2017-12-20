require 'yaml'

class RandomCityId

  def get_random_city_by_id
    @yaml = YAML.load_file('city_id.yml')
    @yaml[rand(@yaml.length)]

  end

end

# x = RandomCityId.new
# puts x.get_random_city_by_id
