# frozen_string_literal: true

require "minitest/autorun"
require_relative "../../lib/studio_game/game"
require_relative "../../lib/studio_game/player"


class GameTest < Minitest::Test
  def setup
    @game = Game.new("Winner Takes All")
    @player_1 = Player.new("finn", 60)
    @player_2 = Player.new("lucy", 90)
    @player_3 = Player.new("jase")

  end

  def test_has_no_players_at_start
    assert_empty(@game.players)
  end


end
