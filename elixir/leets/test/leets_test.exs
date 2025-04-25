defmodule LeetsTest do
  use ExUnit.Case
  doctest Leets

  test "greets the world" do
    assert Leets.hello() == :world
  end
end
