defmodule Decks.Standard52.Suits do
  alias Decks.Suit

  def all do
    [
      clubs,
      diamonds,
      hearts,
      spades
    ]
  end

  def clubs do
    %Suit{
      plural:   "Clubs",
      singular: "Club",
      symbol:   "♣︎",
      colour:   :black
    }
  end

  def diamonds do
    %Suit{
      plural:   "Diamonds",
      singular: "Diamond",
      symbol:   "♦",
      colour:   :red
    }
  end

  def hearts do
    %Suit{
      plural:   "Hearts",
      singular: "Heart",
      symbol:   "♥︎",
      colour:   :red
    }
  end

  def spades do
    %Suit{
      plural:   "Spades",
      singular: "Spade",
      symbol:   "♠︎",
      colour:   :black
    }
  end

end
