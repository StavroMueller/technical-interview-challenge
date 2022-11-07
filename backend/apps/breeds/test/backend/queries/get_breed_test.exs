defmodule Backend.Breeds.Test.Queries.GetBreed do
  use Backend.Database.Test.DataCase

  import Backend.Database.Factory, only: [insert: 2]

  alias Backend.Breeds.Queries.GetBreed

  setup do
    breed = insert(:breed, %{label: "test breed"})

    %{breed: breed}
  end

  test "should get a breed that already exists", %{breed: %{id: id}} do
    {:ok, result} = GetBreed.run(id)

    assert result.id == id
  end
end
