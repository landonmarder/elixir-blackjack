defmodule Blackjack.Deck do
  alias Blackjack.Card

  def shuffle do
    Enum.shuffle(new())
  end

  def new do
    [
      %Card{suit: :heart, rank: "A"},
      %Card{suit: :heart, rank: "2"},
      %Card{suit: :heart, rank: "3"},
      %Card{suit: :heart, rank: "4"},
      %Card{suit: :heart, rank: "5"},
      %Card{suit: :heart, rank: "6"},
      %Card{suit: :heart, rank: "7"},
      %Card{suit: :heart, rank: "8"},
      %Card{suit: :heart, rank: "9"},
      %Card{suit: :heart, rank: "10"},
      %Card{suit: :heart, rank: "J"},
      %Card{suit: :heart, rank: "Q"},
      %Card{suit: :heart, rank: "K"},
      %Card{suit: :club, rank: "A"},
      %Card{suit: :club, rank: "2"},
      %Card{suit: :club, rank: "3"},
      %Card{suit: :club, rank: "4"},
      %Card{suit: :club, rank: "5"},
      %Card{suit: :club, rank: "6"},
      %Card{suit: :club, rank: "7"},
      %Card{suit: :club, rank: "8"},
      %Card{suit: :club, rank: "9"},
      %Card{suit: :club, rank: "10"},
      %Card{suit: :club, rank: "J"},
      %Card{suit: :club, rank: "Q"},
      %Card{suit: :club, rank: "K"},
      %Card{suit: :spade, rank: "A"},
      %Card{suit: :spade, rank: "2"},
      %Card{suit: :spade, rank: "3"},
      %Card{suit: :spade, rank: "4"},
      %Card{suit: :spade, rank: "5"},
      %Card{suit: :spade, rank: "6"},
      %Card{suit: :spade, rank: "7"},
      %Card{suit: :spade, rank: "8"},
      %Card{suit: :spade, rank: "9"},
      %Card{suit: :spade, rank: "10"},
      %Card{suit: :spade, rank: "J"},
      %Card{suit: :spade, rank: "Q"},
      %Card{suit: :spade, rank: "K"},
      %Card{suit: :diamond, rank: "A"},
      %Card{suit: :diamond, rank: "2"},
      %Card{suit: :diamond, rank: "3"},
      %Card{suit: :diamond, rank: "4"},
      %Card{suit: :diamond, rank: "5"},
      %Card{suit: :diamond, rank: "6"},
      %Card{suit: :diamond, rank: "7"},
      %Card{suit: :diamond, rank: "8"},
      %Card{suit: :diamond, rank: "9"},
      %Card{suit: :diamond, rank: "10"},
      %Card{suit: :diamond, rank: "J"},
      %Card{suit: :diamond, rank: "Q"},
      %Card{suit: :diamond, rank: "K"}
    ]
  end
end
