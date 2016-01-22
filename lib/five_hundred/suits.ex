defmodule Decks.FiveHundred.Suits do

  defdelegate clubs(),       to: Decks.Standard54.Suits
  defdelegate diamonds(),    to: Decks.Standard54.Suits
  defdelegate hearts(),      to: Decks.Standard54.Suits
  defdelegate spades(),      to: Decks.Standard54.Suits
  defdelegate red_joker(),   to: Decks.Standard54.Suits
  defdelegate black_joker(), to: Decks.Standard54.Suits
  defdelegate all(),         to: Decks.Standard54.Suits

end