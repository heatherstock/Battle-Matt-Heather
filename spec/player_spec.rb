require 'player'

describe Player do

  subject(:player) { described_class.new("Diamanda") }

  describe "#name" do
    it "returns the player's name" do
      expect(player.name).to eq "Diamanda"
    end
  end
end
