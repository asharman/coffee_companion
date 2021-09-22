# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :coffee_companion,
  ecto_repos: [CoffeeCompanion.Repo]

# Configures the endpoint
config :coffee_companion, CoffeeCompanionWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "BR4gCtDbxc9u4fVq8oiS60r4Umsdxbl5kPXH8KNhvBwIqy6j7MNi8aB0nN2vIK81",
  render_errors: [view: CoffeeCompanionWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: CoffeeCompanion.PubSub,
  live_view: [signing_salt: "/emCjBQM"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
