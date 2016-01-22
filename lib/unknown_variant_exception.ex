defmodule Decks.UnknownVariantException do
  defexception [:variant, :message, :available_variants]
end