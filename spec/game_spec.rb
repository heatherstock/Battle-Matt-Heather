require 'game'

describe Game do
  let(:player_1) { double('player 1', poison: false)}
  let(:player_2) { double('player 2', poison: false) }
  subject(:game) { described_class.new(player_1, player_2) }

  describe "#initialize" do
    it "takes player 1 as argument" do
      expect(game.player_1).to eq player_1
    end
    it "takes player 2 argument" do
      expect(game.player_2).to eq player_2
    end
  end

  describe "#attack" do
    it "tells a player to recieve damage" do
      expect(player_2).to receive(:take_damage)
      game.attack(player_2)
    end

    it "switches to the other players turn" do
      allow(player_2).to receive(:poison_off)
      allow(player_2).to receive(:take_damage)
      game.attack(player_2)
      expect(game.turn).to eq player_2
    end
  end

  describe "#give_poison" do
    it "tells a player to be poisoned" do
      allow(player_2).to receive(:poison_off)
      expect(player_2).to receive(:poison_status)
      game.give_poison(player_2)
    end

  end
end
