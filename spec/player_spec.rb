require 'player'

describe Player do
  let(:player) {described_class.new("Pikachu")}
  describe "#name" do
    it "returns the player's name" do
      expect(player.name).to eq "Pikachu"
    end
  end
end
