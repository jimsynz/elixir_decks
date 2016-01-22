defmodule Decks.Standard54.Suits do
  alias Decks.Suit

  defdelegate clubs(),    to: Decks.Standard52.Suits
  defdelegate diamonds(), to: Decks.Standard52.Suits
  defdelegate hearts(),   to: Decks.Standard52.Suits
  defdelegate spades(),   to: Decks.Standard52.Suits

  def all do
    [ red_joker, black_joker | Standard.all ]
  end

  def red_joker do
    joker :red
  end

  def black_joker do
    joker :black
  end

  defp joker colour do
    %Suit{
      plural:   "Jokers",
      singular: "Joker",
      colour:   colour
    }
  end
end