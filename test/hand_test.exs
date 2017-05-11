defmodule Blackjack.HandTest do
  use ExUnit.Case, async: true
  alias Blackjack.Hand
  alias Blackjack.Deck
  alias Blackjack.Card

  test "that adding item to hand removes it from the deck" do
    hand = []
    deck = Deck.new
    size_of_deck = length(deck)

    {updated_hand, updated_deck} = Hand.add(hand, deck)

    assert length(updated_hand) == 1
    assert length(updated_deck) == size_of_deck - 1
  end

  test "calculating a hand with 0 cards gives you no scores" do
    assert Hand.calculate([]) == []
  end

  test "calculating a hand with 1 numerical card gives you a score of that card" do
    cards = [%Card{rank: "7", suit: :heart}]
    assert Hand.calculate(cards) == [7]
  end

  test "calculating a hand with 1 face card gives you a score of 10" do
    cards = [%Card{rank: "K", suit: :heart}]
    assert Hand.calculate(cards) == [10]
  end

  test "calculating a hand with 1 Ace gives you a score of 1 or 11" do
    cards = [%Card{rank: "A", suit: :heart}]
    assert Hand.calculate(cards) == [1,11]
  end
end
