require 'rspec'
require './lib/photograph'

RSpec.describe Photograph do 
 let(:photograph) { Photograph.new(attributes) }
 let(:attributes) do {
      id: "1",
      name: "Rue Mouffetard, Paris (Boy with Bottles)",
      artist_id: "4",
      year: "1954"
    }
  end

  describe "#initialize" do
    it "exists" do
      expect(photograph).to be_instance_of(Photograph)
    end

    it "has attributes" do
      expect(photograph.id).to eq("1")
      expect(photograph.name).to eq("Rue Mouffetard, Paris (Boy with Bottles)")
      expect(photograph.artist_id).to eq("4")
      expect(photograph.year).to eq("1954")
    end
  end
end