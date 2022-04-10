defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_desk makes 40 cards" do
    deck_length = length(Cards.create_deck)
    assert deck_length == 40
  end

  test "shuffling a deck randomizes it" do
    deck = Cards.create_deck
    refute deck == Cards.shuffle(deck)
  end
end
