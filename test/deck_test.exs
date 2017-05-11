defmodule Blackjack.DeckTest do
  use ExUnit.Case, async: true
  alias Blackjack.Deck

  test "that there are 52 cards in the deck" do
    assert length(Deck.new) == 52
  end

  test "that the deck can shuffle" do
    assert Deck.shuffle != Deck.shuffle
  end
end
