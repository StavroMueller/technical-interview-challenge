# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of the Config module.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
import Config

config :database, Backend.Database.Repo,
  database: "postgres",
  username: "postgres",
  password: "postgres",
  port: "55432",
  hostname: "localhost"

config :database,
  ecto_repos: [Backend.Database.Repo]

# Sample configuration:
#
#     config :logger, :console,
#       level: :info,
#       format: "$date $time [$level] $metadata$message\n",
#       metadata: [:user_id]
#
config :api,
  namespace: Backend.Api

# Configures the endpoint
config :api, Backend.ApiWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [view: Backend.ApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Backend.Api.PubSub,
  live_view: [signing_salt: "FyTBJ/Xl"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

import_config "#{config_env()}.exs"
