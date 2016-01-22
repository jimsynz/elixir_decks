defmodule Decks.FiveHundred.Cards do
  alias Decks.Card
  alias Decks.Standard54.Cards
  alias Decks.FiveHundred.Suits

  def variants do
    ~w| standard two_jokers |a
  end

  def all variant do
    Enum.concat base_cards(variant), joker_cards(variant)
  end

  defdelegate four_of(s,v),  to: Cards
  defdelegate five_of(s,v),  to: Cards
  defdelegate six_of(s,v),   to: Cards
  defdelegate seven_of(s,v), to: Cards
  defdelegate eight_of(s,v), to: Cards
  defdelegate nine_of(s,v),  to: Cards

  def ten_of suit, _ do
    %Card{
      name:      "Ten",
      sort_value: 10,
      suit:       suit
    }
  end

  def eleven_of suit, _ do
    %Card{
      name:       "Eleven",
      sort_value: 11,
      suit:       suit
    }
  end

  def twelve_of suit, _ do
    %Card{
      name:       "Twelve",
      sort_value: 12,
      suit:       suit
    }
  end

  def thirteen_of suit, _ do
    %Card{
      name:       "Thirteen",
      sort_value: 13,
      suit:       suit
    }
  end

  def queen_of suit, v do
    %Card{ Cards.queen_of(suit, v) | sort_value: 14 }
  end

  def king_of suit, v do
    %Card{ Cards.king_of(suit, v) | sort_value: 15 }
  end

  def jack_of suit, v do
    %Card{ Cards.jack_of(suit, v) | sort_value: 16 }
  end

  def joker_of suit, _ do
    %Card{ Cards.joker_of(suit, :standard) | sort_value: 17 }
  end

  def ace_of suit, v do
    %Card{ Cards.ace_of(suit, :standard) | sort_value: 18 }
  end

  defp base_cards :standard do
    Enum.flat_map Decks.Standard52.Suits.all, fn(suit) ->
      [
        four_of(suit, :standard),
        five_of(suit, :standard),
        six_of(suit, :standard),
        seven_of(suit, :standard),
        eight_of(suit, :standard),
        nine_of(suit, :standard),
        ten_of(suit, :standard),
        eleven_of(suit, :standard),
        twelve_of(suit, :standard),
        thirteen_of(suit, :standard),
        queen_of(suit, :standard),
        king_of(suit, :standard),
        jack_of(suit, :standard),
        ace_of(suit, :standard)
      ]
    end
  end

  defp joker_cards :standard do
    [
      Enum.random(joker_cards(:two_jokers))
    ]
  end

  defp joker_cards :two_jokers do
    [
      joker_of(Suits.red_joker, :two_jokers),
      joker_of(Suits.black_joker, :two_jokers)
    ]
  end

end