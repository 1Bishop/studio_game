name = "Finn"
health  = 60

def say_hello(name, health=100)
  "I'm #{name.capitalize} with a health of #{health} as of #{Time.now.strftime("%I:%M:%S")}"
end

def take_damage(name:, health:, damage:, bonus:, points:)
  health -= damage
  puts "#{name.capitalize} took #{damage} damage and has #{health} health remaining."
end

puts say_hello(name, health)
puts take_damage(name: "larry", health: 60, damage: 30, bonus: 10, points: 5)


puts "Let's play a game!"
3.times do |i|
  puts 3 - i
end

puts "GO!"