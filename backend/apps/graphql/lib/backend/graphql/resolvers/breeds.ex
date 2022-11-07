defmodule Backend.Graphql.Resolvers.Breeds do
  alias Backend.Breeds.Queries.{GetBreeds, GetBreed}

  # not yet
  # alias Backend.Graphql.GraphqlHelpers
  #

  def get_breeds(_parent, _args, _resolution) do
    GetBreeds.run()
  end

  def get_breed(_parent, args, _resolution) do
    GetBreed.run(args.id)
  end
end
