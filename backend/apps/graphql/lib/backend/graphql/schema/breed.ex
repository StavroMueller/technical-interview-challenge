defmodule Backend.Graphql.Schema.Breed do
  use Absinthe.Schema.Notation

  object :breed do
    field(:id, :string)
    field(:label, :string)
  end
end
