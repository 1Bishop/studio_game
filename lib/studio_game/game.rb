# frozen_string_literal: true

class Game
  attr_reader :title

  Treasure = Data.define(:name, :points)

  TREASURES = [
    Treasure.new("pie", 10),
    Treasure.new("coin", 25),
    Treasure.new("flute", 50),
    Treasure.new("compass", 65),
    Treasure.new("key", 80),
    Treasure.new("crown", 90),
    Treasure.new("star", 100)
  ]

  def initialize(title)
    @title = title.capitalize
    @players = []
  end

  def add_player(player)
    @players << player
  end

  def players
    @players
  end

  def before_play
    puts "\nBefore playing:"
    puts "\nThe following treasures can be found:"
    TREASURES.each do |treasure|
      puts "A #{treasure.name} is worth #{treasure.points} points"
    end
    @players.each do |player|
      puts player
    end
  end

  def after_play
    puts "\nAfter playing:"
    @players.each do |player|
      puts player
    end
  end

  def play(rounds = 1)
    before_play

    1.upto(rounds) do |round|
      puts "Round #{round}:"

      @players.each do |player|
        player.roll_die
        player.found_treasure(TREASURES.sample)
      end

    end
    after_play
  end

end