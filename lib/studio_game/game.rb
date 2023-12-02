# frozen_string_literal: true

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
      @players.each(&:roll_die)
    end
    after_play
  end
end