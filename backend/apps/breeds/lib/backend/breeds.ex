defmodule Backend.Breeds do
  @moduledoc """
  Documentation for `Backend.Breeds`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Backend.Breeds.hello()
      :world

  """

  alias Backend.Breeds.Queries.{GetBreeds, GetBreed}

  def get_breeds() do
    GetBreeds.run()
  end

  def get_breed(id) do
    GetBreed.run(id)
  end
end
