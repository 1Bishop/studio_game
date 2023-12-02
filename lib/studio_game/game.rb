# frozen_string_literal: true
require_relative 'treasure_trove'
class Game
  attr_reader :title

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
    TreasureTrove::TREASURES.each do |treasure|
      puts "A #{treasure.name} is worth #{treasure.points} points"
    end
    @players.each do |player|
      puts player
    end
  end

  def standings
    @players.sort_by { |player| -player.score }.each do |player|
      puts "#{player.name.ljust(20, '.')} #{player.score}"
    end
  end

  def after_play
    puts "\nAfter playing:"
    standings
  end

  def play(rounds = 1)
    before_play

    1.upto(rounds) do |round|
      puts "Round #{round}:"

      @players.each do |player|
        player.roll_die
        player.found_treasure(TreasureTrove.random)
      end

    end
    after_play
  end

end