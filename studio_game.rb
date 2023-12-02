# Purpose: Main file for the game

require_relative 'lib/studio_game/game'
require_relative 'lib/studio_game/player'

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
game.play(2)

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