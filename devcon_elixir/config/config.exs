# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :devcon_elixir,
  ecto_repos: [DevconElixir.Repo]

# Configures the endpoint
config :devcon_elixir, DevconElixir.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "aNMlWyNHhpXpAQkMzhoKGdszW0xAPDRJlcF/i9nHycSgBYAYkV66Tlnoygu4qiz8",
  render_errors: [view: DevconElixir.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DevconElixir.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
