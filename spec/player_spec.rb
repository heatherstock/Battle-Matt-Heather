require "player"

describe Player do
  subject(:player) {described_class.new("Hilda")}
    it "returns player name" do
      expect(player.name).to eq("Hilda")
    end

    it "has 100HP when initialized" do
      expect(player.hp).to eq 100
    end
end
