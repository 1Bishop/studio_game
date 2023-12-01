class Player
  attr_accessor :name
  attr_reader :health

  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end

  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}."
  end

  def boost
    @health += 15
  end

  def drain
    @health -= 10
  end

  def score
    @health + @name.length
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
    self.before_play

    @players.each do |player|
      player.roll_die
    end
    self.after_play
  end
end


# Test Code:
player_1 = Player.new("finn", 60)
player_2 = Player.new("lucy", 90)
player_3 = Player.new("jase")
player_4 = Player.new("alex", 125)

game = Game.new("Winner Takes All")
game.add_player(player_1)
game.add_player(player_2)
game.add_player(player_3)
game.add_player(player_4)
game.play

# Output:
#Let's play Winner Takes All!

# Before playing:
# I'm Finn with a health of 60 and a score of 64
# I'm Lucy with a health of 90 and a score of 94
# I'm Jase with a health of 100 and a score of 104
# I'm Alex with a health of 125 and a score of 129
# Finn got boosted 😁
# Lucy got skipped
# Jase got drained 😩
# Alex got drained 😩
#
# After playing:
# I'm Finn with a health of 75 and a score of 79
# I'm Lucy with a health of 90 and a score of 94
# I'm Jase with a health of 90 and a score of 94
# I'm Alex with a health of 115 and a score of 119