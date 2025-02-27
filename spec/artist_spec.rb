require 'rspec'
require './lib/artist'

RSpec.describe Artist do 
  let(:artist) { Artist.new(attributes) }
  let(:attributes) do {
      id: "2",
      name: "Ansel Adams",
      born: "1902",
      died: "1984",
      country: "United States"
    }
  end

  describe "#initialize" do
    it "exists" do
      expect(artist).to be_instance_of(Artist)
    end

    it "has attributes" do
      expect(artist.id).to eq("2")
      expect(artist.name).to eq("Ansel Adams")
      expect(artist.born).to eq("1902")
      expect(artist.died).to eq("1984")
      expect(artist.country).to eq("United States")
    end

    it "can calulate the #age_at_death" do 
      expect(artist.age_at_death).to eq(82)
    end
  end

 # expect().to eq()
 end