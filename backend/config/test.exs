import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :api, Backend.ApiWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "2YA7GErhlVzSKShs/wReIV5QlOyqwutVOlI6xO6wlqW4de2baIbe44k3MFk1QeSS",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
