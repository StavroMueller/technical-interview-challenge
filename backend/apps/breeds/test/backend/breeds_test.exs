defmodule Backend.BreedsTest do
  use ExUnit.Case
  doctest Backend.Breeds

  test "greets the world" do
    assert Backend.Breeds.hello() == :world
  end
end
