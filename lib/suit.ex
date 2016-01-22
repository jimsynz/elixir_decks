defmodule Decks.Suit do
  alias __MODULE__
  defstruct plural: nil, singular: nil, symbol: nil, colour: nil

  def is_a?(%Suit{singular: type}, type), do: true
  def is_a?(%Suit{},               _),    do: false

  def is_of?(%Suit{plural: type}, type), do: true
  def is_of?(%Suit{},             _),    do: false

  def plural_of(%Suit{plural: plural}), do: plural

  def singular_of(%Suit{singular: singular}), do: singular

  def colour_of(%Suit{colour: colour}), do: colour

  def symbol_of(%Suit{symbol: symbol}), do: symbol

  # aliases
  def color_of(suit), do: colour_of(suit)
  def name_of(suit), do: plural_of(suit)
end