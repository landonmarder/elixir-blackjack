defmodule Blackjack.HandTest do
  use ExUnit.Case, async: true
  alias Blackjack.Hand
  alias Blackjack.Deck

  test "that adding item to hand removes it from the deck" do
    hand = []
    deck = Deck.all
    size_of_deck = length(deck)

    {updated_hand, updated_deck} = Hand.add(hand, deck)

    assert length(updated_hand) == 1
    assert length(updated_deck) == size_of_deck - 1
  end
end
