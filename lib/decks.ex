defmodule Decks do

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
