defmodule Backend.Graphql.Schema.Breed do
  use Absinthe.Schema.Notation

  object :breed do
    field(:id, :string)
    field(:label, :string)
    field(:image_url, :string)
  end
end
