defmodule Decks do

  def available do
    [
      Standard52: [
        description:
          """
          Standard 52 Card French Deck.

          Contains Ace, 1, 2, 3, 4, 5, 6, 7, 8, 9, Jack, Queen and King in Clubs, Hearts, Diamonds and Spade suits.
          """,
        variants: variants_for(module_for(:Standard52))
      ],
      Standard54: [
        description:
          """
          Standard 54 Card French Deck.

          Contains Ace, 1, 2, 3, 4, 5, 6, 7, 8, 9, Jack, Queen and King in Clubs, Hearts, Diamonds and Spade suits and black and red Jokers.
          """,
        variants: variants_for(module_for(:Standard52))
      ],
      FiveHundred: [
        description:
          """
          500 Deck.

          Contains 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, Queen, King, Ace and Jack of Clubs, Hearts, Diamonds and Spaces plus one or two Jokers.
          """,
        variants: variants_for(module_for(:FiveHundred))
      ]
    ]
  end

  def get type, variant do
    module   = module_for type
    variants = variants_for module

    if Enum.member? variants, variant do
      module
      |> deck_for(variant)
      |> Enum.shuffle
    else
      raise Decks.UnknownVariantException,
        variant:            variant,
        available_variants: variants,
        message:
          """
          Variant #{inspect variant} does not exist in the Standard 52 card deck.

          Available variants are #{inspect variants}.
          """
    end
  end

  def get(type), do: get(type, :standard)

  defp module_for type do
    Module.concat ["Decks", type, "Cards"]
  end

  defp variants_for type do
    apply type, :variants, []
  end

  defp deck_for type, variant do
    apply type, :all, [variant]
  end
end
