defmodule Backend.Breeds.Queries.GetBreeds do
  alias Backend.Database.Repo
  alias Backend.Database.Schema.Breed

  def run() do
    breeds = Repo.all(Breed)

    {:ok, breeds}
  end
end
