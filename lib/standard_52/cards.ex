defmodule Decks.Standard52.Cards do
  alias Decks.Card
  alias Decks.Standard52.Suits

  def variants do
    ~w| standard aces_high |a
  end

  def all(:standard),  do: all_for(:standard)
  def all(:aces_high), do: all_for(:aces_high)
  def all(),           do: all(:standard)

  def ace_of(suit, :standard),  do: create_card("Ace",   "A", 1,  suit)
  def ace_of(suit, :aces_high), do: create_card("Ace",   "A", 13, suit)
  def two_of(suit, _),          do: create_card("Two",   "2", 2,  suit)
  def three_of(suit, _),        do: create_card("Three", "3", 3,  suit)
  def four_of(suit, _),         do: create_card("Four",  "4", 4,  suit)
  def five_of(suit, _),         do: create_card("Five",  "5", 5,  suit)
  def six_of(suit, _),          do: create_card("Six",   "6", 6,  suit)
  def seven_of(suit, _),        do: create_card("Seven", "7", 7,  suit)
  def eight_of(suit, _),        do: create_card("Eight", "8", 8,  suit)
  def nine_of(suit, _),         do: create_card("Nine",  "9", 9,  suit)
  def jack_of(suit, _),         do: create_card("Jack",  "J", 10, suit)
  def queen_of(suit, _),        do: create_card("Queen", "Q", 11, suit)
  def king_of(suit, _),         do: create_card("King",  "K", 12, suit)

  defp all_for variant do
    Enum.flat_map Suits.all, fn(suit)->
      all_for_suit suit, variant
    end
  end

  defp all_for_suit suit, variant do
    [
      ace_of(suit, variant),
      two_of(suit, variant),
      three_of(suit, variant),
      four_of(suit, variant),
      five_of(suit, variant),
      six_of(suit, variant),
      seven_of(suit, variant),
      eight_of(suit, variant),
      nine_of(suit, variant),
      jack_of(suit, variant),
      queen_of(suit, variant),
      king_of(suit, variant),
    ]
  end

  defp create_card name, symbol, sort_value, suit do
    %Card{
      name:       name,
      symbol:     symbol,
      sort_value: sort_value,
      suit:       suit
    }
  end
end