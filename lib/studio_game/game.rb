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

  def play
    before_play
    @players.each(&:roll_die)
    after_play
  end
end