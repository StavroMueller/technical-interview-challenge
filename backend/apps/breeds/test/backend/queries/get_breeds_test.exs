defmodule Backend.Breeds.Test.Queries.GetBreedsTest do
  use Backend.Database.Test.DataCase

  import Backend.Database.Factory, only: [insert: 2]

  alias Backend.Breeds.Queries.GetBreeds

  setup do
    insert(:breed, %{label: "test me"})
    insert(:breed, %{label: "another breed"})
    :ok
  end

  test "should get all breeds" do
    {:ok, breeds} = GetBreeds.run()

    assert length(breeds) == 2
  end
end
