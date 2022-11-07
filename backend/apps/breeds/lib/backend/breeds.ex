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

  alias Backend.Breeds.Queries.GetBreeds

  def get_breeds() do
    GetBreeds.run()
  end
end
