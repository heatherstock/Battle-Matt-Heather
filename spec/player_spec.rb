require "player"

describe Player do
  subject(:player) { described_class.new("Hilda") }
  # subject(:player2) { described_class.new("Terry") }
    it "returns player name" do
      expect(player.name).to eq("Hilda")
    end

    it "has 100HP when initialized" do
      expect(player.hp).to eq described_class::DEFAULT_HP
    end

    describe '#take_damage' do
      it 'lowers a players hp by rand(10' do
        srand(6)
        expect { player.take_damage }.to change { player.hp }.by(-9)
      end
    end

    describe '#be_poisoned' do
      it 'lowers a players hp by rand(5)' do
        srand(6)
        expect { player.be_poisoned }.to change { player.hp }.by(-2)
      end
    end
end
