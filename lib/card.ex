defmodule Blackjack.Card do
  defstruct [:rank, :suit]

  def values(%Blackjack.Card{rank: "A"}) do
    [1, 11]
  end

  def values(%Blackjack.Card{rank: rank}) do
    case Integer.parse(rank) do
      :error ->
        [10]
      {number, _} ->
        [number]
    end
  end
end
