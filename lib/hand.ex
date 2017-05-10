defmodule Blackjack.Hand do
  def add(hand, deck) do
    updated_deck = tl(deck)
    updated_hand = [ hd(deck) | hand ]

    {updated_hand, updated_deck}
  end
end
