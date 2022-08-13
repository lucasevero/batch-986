class SlotMachine
  def initialize(reels = [])
    @reels = reels
    @symbols = {
      "joker" => 50,
      "star" => 40,
      "bell" => 30,
      "seven"=> 20,
      "cherry" => 10
    }.freeze
  end

  def score
    # This should return the score (Integer)
    # If three of a kind
    if @reels.uniq.size == 1
      symbol = @reels[0]
      @symbols[symbol]
    elsif @reels.uniq.size == 2
      # two jokers and something
      if @reels.count("joker") == 2
        25

      # two smgths and joker
      else
        array_without_jokers = @reels - ["joker"]
        symbol = array_without_jokers[0]
        @symbols[symbol] / 2
      end
    else
      # three different things
      0
    end
  end

  def play
    reel1 = @symbols.keys.sample
    reel2 = @symbols.keys.sample
    reel3 = @symbols.keys.sample
    @reels = [reel1, reel2, reel3]
    score
  end
end
