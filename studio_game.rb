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
    puts "#{@name} rolled a #{number_rolled}."
    if number_rolled < 3
      self.drain
      puts "#{@name} got drained! #{@name}'s health is now #{@health}."
    elsif number_rolled < 5
      puts "#{@name} got skipped."
    else
      self.boost
      puts "#{@name} got a boost! #{@name}'s health is now #{@health}."
    end
  end
end


# Test Code:
player_4 = Player.new("alex", 125)
player_4.roll_die
player_4.roll_die

