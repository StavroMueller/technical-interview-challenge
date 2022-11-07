defmodule Backend.Database.Schema.Breed do
  @moduledoc """
  Schema for a dog breed
  """
  use Ecto.Schema

  import Ecto.Changeset

  alias __MODULE__, as: Breed

  @primary_key {:id, Ecto.UUID, autogenerate: true}

  @required_params [:name]

  @optional_params []

  schema "breeds" do
    field(:name, :string)
    timestamps()
  end

  def changeset(model = %Breed{}, attrs \\ %{}) do
    model
    |> cast(attrs, @required_params ++ @optional_params)
    |> validate_required(@required_params)
    |> unique_constraint(:name, :index_for_unique_name)
  end
end
