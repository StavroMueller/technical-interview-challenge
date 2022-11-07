defmodule Backend.Breeds.Test.Queries.GetBreedsTest do
  use Backend.Database.Test.DataCase

  import Backend.Database.Factory, only: [insert: 2]

  setup do
    insert(:breed, %{label: "test me"})
    :ok
  end

  test "should get all breeds" do
    assert 1 == 2
  end
end
