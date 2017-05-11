defmodule Blackjack.CardTest do
  use ExUnit.Case, async: true
  alias Blackjack.Card

  test "that number card returns number value" do
    card = %Card{rank: "4", suit: :spades}

    assert Card.values(card) == [4]
  end

  test "that face card returns 10" do
    card = %Card{rank: "Q", suit: :spades}

    assert Card.values(card) == [10]
  end

  test "that ace returns 1 and 11" do
    card = %Card{rank: "A", suit: :spades}

    assert Card.values(card) == [1,11]
  end
end
