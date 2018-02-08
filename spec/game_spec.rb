require 'game'

describe Game do
  let(:player) {double('a player')}
  subject(:game) {described_class.new}

  describe "#attack" do
    it "tells a player to recieve damage" do
      expect(player).to receive(:take_damage)
      game.attack(player)
    end
  end
end
