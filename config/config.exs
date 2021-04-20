# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :slivovitz,
  ecto_repos: [Slivovitz.Repo]

# Configures the endpoint
config :slivovitz, SlivovitzWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+PahMzzzAGM+vJta2PJsSpWGmh21YGHzBZKqlnMSk5KAkCyAjuVdG+baP/H+4nAq",
  render_errors: [view: SlivovitzWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Slivovitz.PubSub,
  live_view: [signing_salt: "OXn7A62J"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
