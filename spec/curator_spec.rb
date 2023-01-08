require 'rspec'
require './lib/photograph'
require './lib/artist'
require './lib/curator'

RSpec.describe Curator do
  let(:curator) { Curator.new }
  let(:photo_1) do Photograph.new({
      id: "1",      
      name: "Rue Mouffetard, Paris (Boy with Bottles)",      
      artist_id: "1",      
      year: "1954"      
    }) 
  end        
  let(:photo_2) do Photograph.new({
      id: "2",      
      name: "Moonrise, Hernandez",      
      artist_id: "2",      
      year: "1941"      
    }) 
  end   
  let(:photo_3) do Photograph.new({    
      id: "3",      
      name: "Identical Twins, Roselle, New Jersey",      
      artist_id: "3",      
      year: "1967"      
    })  
  end      
  let(:photo_4) do Photograph.new({    
      id: "4",      
      name: "Monolith, The Face of Half Dome",      
      artist_id: "3",      
      year: "1927"      
    })  
  end      
  let(:artist_1) do Artist.new({
      id: "1",      
      name: "Henri Cartier-Bresson",      
      born: "1908",      
      died: "2004",      
      country: "France"      
    }) 
  end        
  let(:artist_2) do Artist.new({
      id: "2",      
      name: "Ansel Adams",      
      born: "1902",      
      died: "1984",      
      country: "United States"      
    })        
  end
  let(:artist_3) do Artist.new({    
      id: "3",      
      name: "Diane Arbus",      
      born: "1923",      
      died: "1971",      
      country: "United States"      
    })        
  end

  describe "#initialize" do
    it "exists" do
      expect(curator).to be_instance_of(Curator)
    end

    it "has attributes" do
      expect(curator.photographs).to eq([])
    end
  end

  it "can #add_photograph" do
    curator.add_photograph(photo_1)
    curator.add_photograph(photo_2)

    expect(curator.photographs).to eq([photo_1, photo_2])
  end

  it "can have #artists" do
    expect(curator.artists).to eq([])
  end

  it "can #add_artist" do
    curator.add_artist(artist_1)
    curator.add_artist(artist_2)

    expect(curator.artists).to eq([artist_1, artist_2])
  end

  it "can #find_artist_by_id" do
    curator.add_artist(artist_1)
    curator.add_artist(artist_2)

    expect(curator.find_artist_by_id("1")).to eq(artist_1)
  end

  describe "It.3" do
    before do
      # @curator = { Curator.new }

      curator.add_artist(artist_1)
      curator.add_artist(artist_2)  
      curator.add_artist(artist_3) 
      
      curator.add_photograph(photo_1)
      curator.add_photograph(photo_2)
      curator.add_photograph(photo_3)
      curator.add_photograph(photo_4)
    end

    it "can organize #photographs_by_artist" do
      expected = {
        artist_1 => [photo_1]
        artist_2 => [photo_2]
        artist_3 => [photo_3, photo_4]
      }
      expect(curator.photographs_by_artist).to eq()
    end

  end

# expect().to eq()
end