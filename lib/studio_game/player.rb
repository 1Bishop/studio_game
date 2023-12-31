# frozen_string_literal: true

class Player
  attr_accessor :name
  attr_reader :health

  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
    @treasures = Hash.new(0)
  end

  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}: #{@treasures}"
  end

  def boost
    @health += 15
  end

  def drain
    @health -= 10
  end

  def score
    @health + @name.length + @treasures.values.reduce(0, :+)
  end

  def found_treasure(treasure)
    name = treasure.name
    points = treasure.points

    puts "#{@name} found a #{treasure.name}"
    @treasures[name] += points
  end

  def roll_die
    number_rolled = rand(1..6)

    if number_rolled < 3
      self.drain
      puts "#{@name} got drained!"
    elsif number_rolled < 5
      puts "#{@name} got skipped."
    else
      self.boost
      puts "#{@name} got a boost!"
    end
  end
end
