defmodule Backend.GraphqlTest do
  use ExUnit.Case
  doctest Backend.Graphql

  test "greets the world" do
    assert Backend.Graphql.hello() == :world
  end
end
