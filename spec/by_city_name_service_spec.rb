require 'spec_helper'


describe Weatherio do
  context 'For the city_name service' do

    before(:all) do
      @weatherio = Weatherio.new.single_name
      @randomcity = Weatherio.new.random_city_name.get_random_city_by_name
      @weatherresults = @weatherio.get_weather_by_city_name(@randomcity)
    end

    it "I expect it to be a hash" do
      expect(@weatherresults).to be_kind_of(Hash)
    end

    it "i expect the coord key to return a hash" do
      expect(@weatherio.get_coord).to be_kind_of(Hash)
    end

    it "the datatype for the latitude should be a float" do
      expect(@weatherio.get_coord_lat).to be_kind_of(Float).or be_kind_of(Integer).or be_nil
    end

    it "the datatype for the longitude should be a float" do
      expect(@weatherio.get_coord_lon).to be_kind_of(Float).or be_kind_of(Integer).or be_nil
    end

    it "i expect the weather key to return a hash" do
      expect(@weatherio.get_weather).to be_kind_of(Array)
    end

    it "i expect the value of weather_id key to be a integer or float if the key exists" do
      expect(@weatherio.get_weather_id).to be_kind_of(Float).or be_kind_of(Integer).or be_nil
    end

    it "i expect the value of weather_main key to be a string" do
      expect(@weatherio.get_weather_main).to be_kind_of(String)
    end

    it "i expect the value of weather_description key to be a string" do
      expect(@weatherio.get_weather_description).to be_kind_of(String)
    end

    it "i expect the value of weather_icon key to be a string" do
      expect(@weatherio.get_weather_icon).to be_kind_of(String)
    end

    it "i expect the data type of the main_temp key to be a float" do
      expect(@weatherio.get_main_temp).to be_kind_of(Float).or be_kind_of(Integer).or be_nil
    end

    it "i expect the data type of the main_pressure key to be a integer or float if the key exists" do
      expect(@weatherio.get_main_pressure).to be_kind_of(Float).or be_kind_of(Integer).or be_nil
    end

    it "i expect the data type of the main_humidity key to be a integer or float if the key exists" do
      expect(@weatherio.get_main_humidity).to be_kind_of(Float).or be_kind_of(Integer).or be_nil
    end

    it "i expect the data type of the main_temp_min key to be a integer or float if the key exists" do
      expect(@weatherio.get_main_temp_min).to be_kind_of(Float).or be_kind_of(Integer).or be_nil
    end

    it "i expect the data type of the main_temp_max key to be a integer or float if the key exists" do
      expect(@weatherio.get_main_temp_max).to be_kind_of(Float).or be_kind_of(Integer).or be_nil
    end
    #
    it "i expect the data type of the main_sea_level key to be a float" do
        expect(@weatherio.get_main_sea_level).to be_kind_of(Float).or be_kind_of(Integer).or be_nil
    end

    it "i expect the data type of the main_grnd_level key to be a float" do
        expect(@weatherio.get_main_grnd_level).to be_kind_of(Float).or be_kind_of(Integer).or be_nil
    end

    it "i expect the data type of the main_grnd_level key to be a float" do
      expect(@weatherio.get_main_grnd_level).to be_kind_of(Float).or be_kind_of(Integer).or be_nil
    end

    it "i expect the data type of the wind_speed key to be a float" do
      expect(@weatherio.get_wind_speed).to be_kind_of(Float).or be_kind_of(Integer).or be_nil
    end

    it "i expect the data type of the wind_deg key to be a integer or float if the key exists" do
      expect(@weatherio.get_wind_deg).to be_kind_of(Float).or be_kind_of(Integer).or be_nil
    end

    it "i expect the data type of the clouds_all key to be a float" do
      expect(@weatherio.get_clouds_all).to be_kind_of(Float).or be_kind_of(Integer).or be_nil
    end

    it "i expect the data type of the sys_type key to be a float" do
      expect(@weatherio.get_sys_type).to be_kind_of(Float).or be_kind_of(Integer).or be_nil
    end

    it "i expect the data type of the sys_id key to be a float" do
      expect(@weatherio.get_sys_id).to be_kind_of(Float).or be_kind_of(Integer).or be_nil
    end


    it "i expect the data type of the sys_message key to be a float" do
      expect(@weatherio.get_sys_message).to be_kind_of(Float).or be_kind_of(Integer).or be_nil
    end

    it "i expect the data type of the sys_country key to be a String" do
      expect(@weatherio.get_sys_country).to be_kind_of(String)
    end

    it "i expect the data type of the sys_sunrise key to be a integer or float if the key exists" do
      expect(@weatherio.get_sys_sunrise).to be_kind_of(Float).or be_kind_of(Integer).or be_nil
    end

    it "i expect the data type of the sys_sunset key to be a integer or float if the key exists" do
      expect(@weatherio.get_sys_sunset).to be_kind_of(Float).or be_kind_of(Integer).or be_nil
    end

    it "i expect the data type of the id key to be a integer or float if the key exists" do
      expect(@weatherio.get_id).to be_kind_of(Float).or be_kind_of(Integer).or be_nil
    end

    it "i expect the data type of the name key to be a string" do
      expect(@weatherio.get_name).to be_kind_of(String)
    end

    it "i expect the data type of the cod key to be a integer or float if the key exists" do
      expect(@weatherio.get_cod).to be_kind_of(Integer)
    end

  end
end
