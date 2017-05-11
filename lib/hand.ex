defmodule Blackjack.Hand do
  alias Blackjack.Card

  def add(hand, deck) do
    updated_deck = tl(deck)
    updated_hand = [ hd(deck) | hand ]

    {updated_hand, updated_deck}
  end

  def calculate([]) do
    []
  end

  def calculate(cards) when length(cards) == 1 do
    Card.values(hd(cards))
  end
end
