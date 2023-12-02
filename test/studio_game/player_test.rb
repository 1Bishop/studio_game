# frozen_string_literal: true

require "minitest/autorun"
require_relative "../../lib/studio_game/player"

class PlayerTest < Minitest::Test
  def setup
    @initial_health = 60
    @player = Player.new("finn", @initial_health)
  end

  def test_name_is_capitalized
    assert_equal("Finn", @player.name)
  end

  def test_health_is_positive
    assert(@player.health.positive?)
  end
end