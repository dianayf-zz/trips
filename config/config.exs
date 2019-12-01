# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :trips,
  ecto_repos: [Trips.Repo]

# Configures the endpoint
config :trips, TripsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "lar/yrS6UvCxM1LElrHmU/7kH0dh5hJ2/Uog1g1+WlWe06kzmMgLUqoTE3aja+KJ",
  render_errors: [view: TripsWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Trips.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
