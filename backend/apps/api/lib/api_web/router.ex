defmodule Backend.ApiWeb.Router do
  use Backend.ApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Backend.ApiWeb do
    pipe_through :api
  end
end
