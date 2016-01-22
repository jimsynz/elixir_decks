# Decks

Decks provides standard decks for various card games written in Elixir.

Currently supported decks are:

  - Standard 52 card French deck.
  - Standard 54 card French deck (52 plus jokers).
  - 500 deck (54 plus 11, 12 and 13, minus 2 and 3).

The plan is to support as many variants of playing card decks as possible.  Please feel free to send pull requests.


## Installation

[Available in Hex](https://hex.pm/packages/decks), the package can be installed with:

Add decks to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:decks, "~> 0.0.1"}]
end
```

## Usage

To retrieve a list of decks and variants:

```elixir
Decks.available
# [Standard52: [description: "Standard 52 Card French Deck.\n\nContains Ace, 1, 2, 3, 4, 5, 6, 7, 8, 9, Jack, Queen and King in Clubs, Hearts, Diamonds and Spade suits.\n",
#   variants: [:standard, :aces_high]],
#  Standard54: [description: "Standard 54 Card French Deck.\n\nContains Ace, 1, 2, 3, 4, 5, 6, 7, 8, 9, Jack, Queen and King in Clubs, Hearts, Diamonds and Spade suits and black and red Jokers.\n",
#   variants: [:standard, :aces_high]],
#  FiveHundred: [description: "500 Deck.\n\nContains 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, Queen, King, Ace and Jack of Clubs, Hearts, Diamonds and Spaces plus one or two Jokers.\n",
#   variants: [:standard, :two_jokers]]]
```

To retrieve a deck of a given type and variant:

```elixir
Decks.get :Standard52, :aces_high
```