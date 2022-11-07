defmodule Backend.ApiWeb.Router do
  use Backend.ApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL, schema: Backend.Graphql.Schema
    forward "/graphql", Absinthe.Plug, schema: Backend.Graphql.Schema
  end
end
