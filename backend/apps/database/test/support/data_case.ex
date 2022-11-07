defmodule Backend.Database.Test.DataCase do
  @moduledoc """
  used when writing tests that interact with the database
  """

  use ExUnit.CaseTemplate

  alias Ecto.Adapters.SQL.Sandbox
  alias Backend.Database.Repo

  using do
    quote do
      import Ecto
      import Ecto.Changeset
      import Ecto.Query

      alias Backend.Database.Repo

      # handy for queriying bad uuids, etc
      def generate_uuid(), do: Ecto.UUID.bingenerate() |> Ecto.UUID.cast!()
    end
  end

  setup _tags do
    :ok = Sandbox.checkout(Repo)
  end
end
