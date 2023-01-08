require 'rspec'
require './lib/photograph'
require './lib/artist'
require './lib/curator'

RSpec.describe Curator do
  let(:curator) { Curator.new }
  let(:photo_1) { Photograph.new({
     id: "1",      
     name: "Rue Mouffetard, Paris (Boy with Bottles)",      
     artist_id: "1",      
     year: "1954"      
  }) }         
  let(:photo_2) { Photograph.new({
     id: "2",      
     name: "Moonrise, Hernandez",      
     artist_id: "2",      
     year: "1941"      
  }) }     
  let(:artist_1) {Artist.new({
    id: "1",      
    name: "Henri Cartier-Bresson",      
    born: "1908",      
    died: "2004",      
    country: "France"      
  }) }        
  let(:artist_2) { Artist.new({
    id: "2",      
    name: "Ansel Adams",      
    born: "1902",      
    died: "1984",      
    country: "United States"      
  }) }        
  
  describe "#initialize" do
    it "exists" do
      expect(curator).to be_instance_of(Curator)
    end

    it "has attributes" do
      expect(curator.photographs).to eq([])
    end
  end

end