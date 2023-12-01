name = "Finn"
health  = 60

puts "#{name.capitalize} has a health of #{health}."
puts "#{name.capitalize}'s health is #{health}.".center(50, '*')
puts "#{name.capitalize}".ljust(30, '.') + "#{health} health"

puts health**2
puts health.to_s.reverse

puts "Let's play a game!"
3.times do |i|
  puts 3 - i
end

puts "GO!"