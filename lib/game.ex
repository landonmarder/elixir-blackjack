defmodule Blackjack.Game do
  use GenServer
  alias Blackjack.Hand
  alias Blackjack.Deck

  @name GAME

  ## Client API

  def start_link(opts \\ []) do
    GenServer.start_link(__MODULE__, :ok, opts ++ [name: GAME])
  end

  def hit do
    GenServer.call(@name, {:hit})
  end

  def observe do
    GenServer.call(@name, {:observe})
  end

  def stay do
    GenServer.call(@name, {:stay})
  end

  ## Server Callbacks

  def init(:ok) do
    deck = Deck.shuffle

    {player_hand, deck} = Hand.add([], deck)
    {dealer_hand, deck} = Hand.add([], deck)
    {player_hand, deck} = Hand.add(player_hand, deck)
    {dealer_hand, deck} = Hand.add(dealer_hand, deck)

    {:ok, %{player_hand: player_hand, deck: deck, dealer_hand: dealer_hand} }
  end

  def handle_call({:observe}, _from, game) do
    IO.puts "PLAYER'S CARDS:"
    IO.puts "DEALER'S CARDS"

    {:reply, nil, game}
  end

  def handle_call({:hit}, _from, game) do
    new_card = hd(game.deck)
    updated_hand = [ new_card | game.player_hand ]
    updated_deck = tl(game.deck)
    updated_game = %{player_hand: updated_hand, deck: updated_deck, dealer_hand: game.dealer_hand}

    {:reply, new_card, updated_game}
  end

  def handle_call({:stay}, _from, game) do
    IO.puts "PLAYER DECIDED TO STAY"

    {:reply, nil, game}
  end
end
