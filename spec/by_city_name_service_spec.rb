require 'spec_helper'

describe Weatherio do
  context 'text' do

    before(:all) do
      @weatherio = Weatherio.new.single_name
      @weatherio.get_weather_by_city_name("Abuja")
    end

    it "I expect it to be a hash" do
      expect(@weatherio.get_weather_by_city_name("Abuja")).to be_kind_of(Hash)
    end

    it "i expect the coord key to return a hash" do
      expect(@weatherio.get_coord).to be_kind_of(Hash)
    end

    it "the datatype for the latitude should be a float" do
      expect(@weatherio.get_coord_lat).to be_kind_of(Float)
    end

    it "the datatype for the longitude should be a float" do
      expect(@weatherio.get_coord_lon).to be_kind_of(Float)
    end

    it "i expect the weather key to return a hash" do
      expect(@weatherio.get_weather).to be_kind_of(Array)
    end

    it "i expect the value of weather_id key to be a integer" do
      expect(@weatherio.get_weather_id).to be_kind_of(Integer)
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
      expect(@weatherio.get_main_temp).to be_kind_of(Float)
    end

    it "i expect the data type of the main_pressure key to be a integer" do
      expect(@weatherio.get_main_pressure).to be_kind_of(Integer)
    end

    it "i expect the data type of the main_humidity key to be a integer" do
      expect(@weatherio.get_main_humidity).to be_kind_of(Integer)
    end

    it "i expect the data type of the main_temp_min key to be a integer" do
      expect(@weatherio.get_main_temp_min).to be_kind_of(Float)
    end

    it "i expect the data type of the main_temp_max key to be a integer" do
      expect(@weatherio.get_main_temp_max).to be_kind_of(Float)
    end

    it "i expect the data type of the main_sea_level key to be a float" do
      expect(@weatherio.get_main_sea_level).to be_kind_of(Float)
    end

    it "i expect the data type of the main_grnd_level key to be a float" do
      expect(@weatherio.get_main_grnd_level).to be_kind_of(Float)
    end








  end
end
