defmodule Backend.Database.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Starts a worker by calling: Backend.Database.Worker.start_link(arg)
      # {Backend.Database.Worker, arg}
      Backend.Database.Repo
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Backend.Database.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
