require "player"

describe Player do
  subject(:player) { described_class.new("Hilda") }
  subject(:player2) { described_class.new("Terry") }
    it "returns player name" do
      expect(player.name).to eq("Hilda")
    end

    it "has 100HP when initialized" do
      expect(player.hp).to eq described_class::DEFAULT_HP
    end

    describe '#attack' do
      it 'lowers a players hp by 10' do
        expect { player.attack(player2) }.to change { player2.hp }.by(-described_class::DEFAULT_DAMAGE)
      end
    end
end
