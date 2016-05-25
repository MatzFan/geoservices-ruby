require 'helper'

describe Geoservice do
  context 'getting a catalog' do
    before :all do
      @catalog = Geoservice::Catalog.new(host: 'http://rmgsc.cr.usgs.gov/ArcGIS/rest/services/')
      @ecosys_us = @catalog['ecosys_US']
    end

    it 'should return at least one service' do
      expect(@catalog.services.size).to be >= 1
    end

    it "should return services of ['type'] 'MapServer'" do
      expect(@ecosys_us['type']).to eq('MapServer')
    end
  end
end
