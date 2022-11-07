defmodule Backend.Database.Factory do
  use ExMachina.Ecto, repo: Backend.Database.Repo

  def breed_factory, do: %Backend.Database.Schema.Breed{}
end
