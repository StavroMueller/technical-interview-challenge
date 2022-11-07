defmodule Backend.DatabaseTest do
  use ExUnit.Case
  doctest Backend.Database

  test "greets the world" do
    assert Backend.Database.hello() == :world
  end
end
