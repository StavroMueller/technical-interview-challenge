defmodule Backend.Breeds.Queries.GetBreed do
  import Ecto.Query

  alias Ecto.Multi

  alias Backend.Database.Repo
  alias Backend.Database.Schema.Breed



  def run(id) do
    multi = Multi.new()
      |> Multi.put(:id, id)
      |> Multi.run(:breed, &get_breed/2)

    case Repo.transaction(multi) do
      {:ok, %{breed: nil}} -> 
        {:error, "Breed not found"}
      {:ok, %{breed: breed}} ->
        {:ok, breed}
      {:error, _} -> 
        {:error, "There was an error getting the breed"}
    end
  end

  defp get_breed(_repo, %{id: id}) do
    breed = 
      Breed
      |> where([b], b.id == ^id)
      |> Repo.one()

    {:ok, breed}
  end
end
