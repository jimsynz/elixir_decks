defmodule Decks.Standard54.Cards do
  alias Decks.Standard54.Suits, as: Suits
  alias Decks.Card

  def all(:standard),  do: all_for(:standard)
  def all(:aces_high), do: all_for(:aces_high)
  def all(),           do: all(:standard)

  defdelegate variants(),    to: Decks.Standard52.Cards
  defdelegate ace_of(s,v),   to: Decks.Standard52.Cards
  defdelegate two_of(s,v),   to: Decks.Standard52.Cards
  defdelegate three_of(s,v), to: Decks.Standard52.Cards
  defdelegate four_of(s,v),  to: Decks.Standard52.Cards
  defdelegate five_of(s,v),  to: Decks.Standard52.Cards
  defdelegate six_of(s,v),   to: Decks.Standard52.Cards
  defdelegate seven_of(s,v), to: Decks.Standard52.Cards
  defdelegate eight_of(s,v), to: Decks.Standard52.Cards
  defdelegate nine_of(s,v),  to: Decks.Standard52.Cards
  defdelegate jack_of(s,v),  to: Decks.Standard52.Cards
  defdelegate queen_of(s,v), to: Decks.Standard52.Cards
  defdelegate king_of(s,v),  to: Decks.Standard52.Cards

  def joker_of suit, :standard do
    %Card{
      name:       "Joker",
      sort_value: 13,
      suit:       suit
    }
  end

  def joker_of suit, :aces_high do
    %Card{
      name:       "Joker",
      sort_value: 14,
      suit:       suit
    }
  end

  defp all_for variant do
    [
      joker_of(Suits.black_joker, variant),
      joker_of(Suits.red_joker,   variant)
      | Decks.Standard52.Cards.all(variant)
    ]
  end

end