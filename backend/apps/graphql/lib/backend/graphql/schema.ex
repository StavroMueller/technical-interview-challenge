defmodule Backend.Graphql.Schema do
  @moduledoc """
  Root level schema for all graphql queries
  """
  use Absinthe.Schema

  alias Backend.Graphql.Resolvers.Breeds

  import_types(Backend.Graphql.Schema.Breed)

  query do
    @desc "Get a list of breeds"
    field(:breeds, list_of(:breed)) do
      resolve(&Breeds.get_breeds/3)
    end

    @desc "Get one breed"
    field(:breed, :breed) do
      resolve(&Breeds.get_breed/3)
    end
  end
end
