defmodule Backend.Graphql.Schema do
  @moduledoc """
  Root level schema for all graphql queries
  """
  use Absinthe.Schema

  import_types(Backend.Graphql.Schema.Breed)

  query do
    @desc "Get a list of breeds"
    field(:breeds, list_of(:breed)) do
      resolve({:ok, "hi"})
    end
  end
end
