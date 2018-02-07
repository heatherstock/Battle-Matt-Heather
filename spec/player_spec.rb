require 'player'

describe Player do

  subject(:diamanda) { described_class.new("Diamanda") }
  let(:marissa)      { described_class.new("Marissa")  }

  describe "#name" do
    it "returns the player's name" do
      expect(diamanda.name).to eq "Diamanda"
    end
  end

  describe "#attack" do
    it "reduces attacked player's hitpoints by 2" do
      damage_amount = -2
      expect { diamanda.attack(marissa) }.to change{ marissa.hitpoints }.by(damage_amount)
    end
  end
end
