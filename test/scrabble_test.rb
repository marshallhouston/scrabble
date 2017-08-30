gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_an_entire_word
    game = Scrabble.new
    expected = 8
    actual = game.score("hello")

    assert_equal expected, actual
  end

  def test_it_can_score_a_blank_string
    game = Scrabble.new
    expected = 0
    actual = game.score("")

    assert_equal expected, actual
  end

  def test_it_can_score_nil
    game = Scrabble.new
    expected = 0
    actual = game.score(nil)

    assert_equal expected, actual
  end

end
