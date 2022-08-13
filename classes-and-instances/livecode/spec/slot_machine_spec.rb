require_relative '../slot_machine'

describe SlotMachine do
  # describe "#initialize" do
  #   it "Should be initialized with three reels" do

  #   end
  # end

  describe "#score" do
    it "Should score 50 for three jokers" do
      machine = SlotMachine.new(["joker", "joker", "joker"])
      expect(machine.score).to eq(50)
    end

    it "Should score 25 for two jokers and a bell" do
      machine = SlotMachine.new(["joker", "joker", "bell"])
      expect(machine.score).to eq(25)
    end

    it "Should score 30 for three bells" do
      machine = SlotMachine.new(["bell", "bell", "bell"])
      expect(machine.score).to eq(30)
    end

    it "Should score 15 for two bells and a joker" do
      machine = SlotMachine.new(["bell", "bell", "joker"])
      expect(machine.score).to eq(15)
    end

    it "Should score 0 for three different symbols" do
      machine = SlotMachine.new(["star", "bell", "joker"])
      expect(machine.score).to eq(0)
    end
  end
end
